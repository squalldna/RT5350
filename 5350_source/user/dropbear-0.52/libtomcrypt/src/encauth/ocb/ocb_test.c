/* LibTomCrypt, modular cryptographic library -- Tom St Denis
 *
 * LibTomCrypt is a library that provides various cryptographic
 * algorithms in a highly modular and flexible manner.
 *
 * The library is free for all purposes without any express
 * guarantee it works.
 *
 * Tom St Denis, tomstdenis@gmail.com, http://libtomcrypt.com
 */

/** 
   @file ocb_test.c
   OCB implementation, self-test by Tom St Denis
*/
#include "tomcrypt.h"

#ifdef OCB_MODE

/** 
  Test the OCB protocol
  @return   CRYPT_OK if successful
*/
int ocb_test(void)
{
#ifndef LTC_TEST
   return CRYPT_NOP;
#else
   static const struct {
         int ptlen;
         unsigned char key[16], nonce[16], pt[34], ct[34], tag[16];
   } tests[] = {

   /* OCB-AES-128-0B */
{
   0,
   /* key */
   { 0x00, 0x01, 0x02, 0x03, 0x04, 0x05, 0x06, 0x07,
     0x08, 0x09, 0x0a, 0x0b, 0x0c, 0x0d, 0x0e, 0x0f },
   /* nonce */
   { 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
     0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01 },
   /* pt */
   { 0 },
   /* ct */
   { 0 },
   /* tag */
   { 0x15, 0xd3, 0x7d, 0xd7, 0xc8, 0x90, 0xd5, 0xd6,
     0xac, 0xab, 0x92, 0x7b, 0xc0, 0xdc, 0x60, 0xee },
},


   /* OCB-AES-128-3B */
{
   3, 
   /* key */
   { 0x00, 0x01, 0x02, 0x03, 0x04, 0x05, 0x06, 0x07,
     0x08, 0x09, 0x0a, 0x0b, 0x0c, 0x0d, 0x0e, 0x0f },
   /* nonce */
   { 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
     0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01 },
   /* pt */
   { 0x00, 0x01, 0x02 },
   /* ct */
   { 0xfc, 0xd3, 0x7d },
   /* tag */
   { 0x02, 0x25, 0x47, 0x39, 0xa5, 0xe3, 0x56, 0x5a,
     0xe2, 0xdc, 0xd6, 0x2c, 0x65, 0x97, 0x46, 0xba },
},

   /* OCB-AES-128-16B */
{
   16, 
   /* key */
   { 0x00, 0x01, 0x02, 0x03, 0x04, 0x05, 0x06, 0x07,
     0x08, 0x09, 0x0a, 0x0b, 0x0c, 0x0d, 0x0e, 0x0f },
   /* nonce */
   { 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
     0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01 },
   /* pt */
   { 0x00, 0x01, 0x02, 0x03, 0x04, 0x05, 0x06, 0x07,
     0x08, 0x09, 0x0a, 0x0b, 0x0c, 0x0d, 0x0e, 0x0f },
   /* ct */
   { 0x37, 0xdf, 0x8c, 0xe1, 0x5b, 0x48, 0x9b, 0xf3,
     0x1d, 0x0f, 0xc4, 0x4d, 0xa1, 0xfa, 0xf6, 0xd6 },
   /* tag */
   { 0xdf, 0xb7, 0x63, 0xeb, 0xdb, 0x5f, 0x0e, 0x71,
     0x9c, 0x7b, 0x41, 0x61, 0x80, 0x80, 0x04, 0xdf },
},

   /* OCB-AES-128-20B  */
{
   20, 
   /* key */
   { 0x00, 0x01, 0x02, 0x03, 0x04, 0x05, 0x06, 0x07,
     0x08, 0x09, 0x0a, 0x0b, 0x0c, 0x0d, 0x0e, 0x0f },
   /* nonce */
   { 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
     0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01 },
   /* pt */
   { 0x00, 0x01, 0x02, 0x03, 0x04, 0x05, 0x06, 0x07,
     0x08, 0x09, 0x0a, 0x0b, 0x0c, 0x0d, 0x0e, 0x0f, 
     0x10, 0x11, 0x12, 0x13 },
   /* ct */
   { 0x01, 0xa0, 0x75, 0xf0, 0xd8, 0x15, 0xb1, 0xa4,
     0xe9, 0xc8, 0x81, 0xa1, 0xbc, 0xff, 0xc3, 0xeb,
     0x70, 0x03, 0xeb, 0x55},
   /* tag */
   { 0x75, 0x30, 0x84, 0x14, 0x4e, 0xb6, 0x3b, 0x77,
     0x0b, 0x06, 0x3c, 0x2e, 0x23, 0xcd, 0xa0, 0xbb },
},

   /* OCB-AES-128-32B  */
{
   32, 
   /* key */
   { 0x00, 0x01, 0x02, 0x03, 0x04, 0x05, 0x06, 0x07,
     0x08, 0x09, 0x0a, 0x0b, 0x0c, 0x0d, 0x0e, 0x0f },
   /* nonce */
   { 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
     0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01 },
   /* pt */
   { 0x00, 0x01, 0x02, 0x03, 0x04, 0x05, 0x06, 0x07,
     0x08, 0x09, 0x0a, 0x0b, 0x0c, 0x0d, 0x0e, 0x0f, 
     0x10, 0x11, 0x12, 0x13, 0x14, 0x15, 0x16, 0x17,
     0x18, 0x19, 0x1a, 0x1b, 0x1c, 0x1d, 0x1e, 0x1f },
   /* ct */
   { 0x01, 0xa0, 0x75, 0xf0, 0xd8, 0x15, 0xb1, 0xa4,
     0xe9, 0xc8, 0x81, 0xa1, 0xbc, 0xff, 0xc3, 0xeb,
     0x4a, 0xfc, 0xbb, 0x7f, 0xed, 0xc0, 0x8c, 0xa8,
     0x65, 0x4c, 0x6d, 0x30, 0x4d, 0x16, 0x12, 0xfa },

   /* tag */
   { 0xc1, 0x4c, 0xbf, 0x2c, 0x1a, 0x1f, 0x1c, 0x3c,
     0x13, 0x7e, 0xad, 0xea, 0x1f, 0x2f, 0x2f, 0xcf },
},

   /* OCB-AES-128-34B  */
{
   34, 
   /* key */
   { 0x00, 0x01, 0x02, 0x03, 0x04, 0x05, 0x06, 0x07,
     0x08, 0x09, 0x0a, 0x0b, 0x0c, 0x0d, 0x0e, 0x0f },
   /* nonce */
   { 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
     0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01 },
   /* pt */
   { 0x00, 0x01, 0x02, 0x03, 0x04, 0x05, 0x06, 0x07,
     0x08, 0x09, 0x0a, 0x0b, 0x0c, 0x0d, 0x0e, 0x0f, 
     0x10, 0x11, 0x12, 0x13, 0x14, 0x15, 0x16, 0x17,
     0x18, 0x19, 0x1a, 0x1b, 0x1c, 0x1d, 0x1e, 0x1f,
     0x20, 0x21 },
   /* ct */
   { 0x01, 0xa0, 0x75, 0xf0, 0xd8, 0x15, 0xb1, 0xa4,
     0xe9, 0xc8, 0x81, 0xa1, 0xbc, 0xff, 0xc3, 0xeb,
     0xd4, 0x90, 0x3d, 0xd0, 0x02, 0x5b, 0xa4, 0xaa,
     0x83, 0x7c, 0x74, 0xf1, 0x21, 0xb0, 0x26, 0x0f,
     0xa9, 0x5d },

   /* tag */
   { 0xcf, 0x83, 0x41, 0xbb, 0x10, 0x82, 0x0c, 0xcf,
     0x14, 0xbd, 0xec, 0x56, 0xb8, 0xd7, 0xd6, 0xab },
},

};

   int err, x, idx, res;
   unsigned long len;
   unsigned char outct[MAXBLOCKSIZE], outtag[MAXBLOCKSIZE];

    /* AES can be under rijndael or aes... try to find it */ 
    if ((idx = find_cipher("aes")) == -1) {
       if ((idx = find_cipher("rijndael")) == -1) {
          return CRYPT_NOP;
       }
    }

    for (x = 0; x < (int)(sizeof(tests)/sizeof(tests[0])); x++) {
        len = sizeof(outtag);
        if ((err = ocb_encrypt_authenticate_memory(idx, tests[x].key, 16,
             tests[x].nonce, tests[x].pt, tests[x].ptlen, outct, outtag, &len)) != CRYPT_OK) {
           return err;
        }
        
        if (XMEMCMP(outtag, tests[x].tag, len) || XMEMCMP(outct, tests[x].ct, tests[x].ptlen)) {
#if 0
           unsigned long y;
           printf("\n\nFailure: \nCT:\n");
           for (y = 0; y < (unsigned long)tests[x].ptlen; ) {
               printf("0x%02x", outct[y]);
               if (y < (unsigned long)(tests[x].ptlen-1)) printf(", ");
               if (!(++y % 8)) printf("\n");
           }
           printf("\nTAG:\n");
           for (y = 0; y < len; ) {
               printf("0x%02x", outtag[y]);
               if (y < len-1) printf(", ");
               if (!(++y % 8)) printf("\n");
           }
#endif
           return CRYPT_FAIL_TESTVECTOR;
        }
        
        if ((err = ocb_decrypt_verify_memory(idx, tests[x].key, 16, tests[x].nonce, outct, tests[x].ptlen,
             outct, tests[x].tag, len, &res)) != CRYPT_OK) {
           return err;
        }
        if ((res != 1) || XMEMCMP(tests[x].pt, outct, tests[x].ptlen)) {
#if 0
           unsigned long y;
           printf("\n\nFailure-decrypt: \nPT:\n");
           for (y = 0; y < (unsigned long)tests[x].ptlen; ) {
               printf("0x%02x", outct[y]);
               if (y < (unsigned long)(tests[x].ptlen-1)) printf(", ");
               if (!(++y % 8)) printf("\n");
           }
           printf("\nres = %d\n\n", res);
#endif
        }
    }
    return CRYPT_OK;
#endif /* LTC_TEST */
}

#endif /* OCB_MODE */


/* some comments

   -- it's hard to seek
   -- hard to stream [you can't emit ciphertext until full block]
   -- The setup is somewhat complicated...
*/

/* $Source: /home/cvsroot/RT288x_SDK/source/user/dropbear-0.52/libtomcrypt/src/encauth/ocb/ocb_test.c,v $ */
/* $Revision: 1.1 $ */
/* $Date: 2010-07-02 06:29:13 $ */
