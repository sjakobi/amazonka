{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.IoT.Types.CustomCodeSigning
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IoT.Types.CustomCodeSigning where

import Network.AWS.IoT.Types.CodeSigningCertificateChain
import Network.AWS.IoT.Types.CodeSigningSignature
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Describes a custom method used to code sign a file.
--
--
--
-- /See:/ 'customCodeSigning' smart constructor.
data CustomCodeSigning = CustomCodeSigning'
  { _ccsSignature ::
      !(Maybe CodeSigningSignature),
    _ccsSignatureAlgorithm ::
      !(Maybe Text),
    _ccsCertificateChain ::
      !( Maybe
           CodeSigningCertificateChain
       ),
    _ccsHashAlgorithm :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CustomCodeSigning' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ccsSignature' - The signature for the file.
--
-- * 'ccsSignatureAlgorithm' - The signature algorithm used to code sign the file.
--
-- * 'ccsCertificateChain' - The certificate chain.
--
-- * 'ccsHashAlgorithm' - The hash algorithm used to code sign the file.
customCodeSigning ::
  CustomCodeSigning
customCodeSigning =
  CustomCodeSigning'
    { _ccsSignature = Nothing,
      _ccsSignatureAlgorithm = Nothing,
      _ccsCertificateChain = Nothing,
      _ccsHashAlgorithm = Nothing
    }

-- | The signature for the file.
ccsSignature :: Lens' CustomCodeSigning (Maybe CodeSigningSignature)
ccsSignature = lens _ccsSignature (\s a -> s {_ccsSignature = a})

-- | The signature algorithm used to code sign the file.
ccsSignatureAlgorithm :: Lens' CustomCodeSigning (Maybe Text)
ccsSignatureAlgorithm = lens _ccsSignatureAlgorithm (\s a -> s {_ccsSignatureAlgorithm = a})

-- | The certificate chain.
ccsCertificateChain :: Lens' CustomCodeSigning (Maybe CodeSigningCertificateChain)
ccsCertificateChain = lens _ccsCertificateChain (\s a -> s {_ccsCertificateChain = a})

-- | The hash algorithm used to code sign the file.
ccsHashAlgorithm :: Lens' CustomCodeSigning (Maybe Text)
ccsHashAlgorithm = lens _ccsHashAlgorithm (\s a -> s {_ccsHashAlgorithm = a})

instance FromJSON CustomCodeSigning where
  parseJSON =
    withObject
      "CustomCodeSigning"
      ( \x ->
          CustomCodeSigning'
            <$> (x .:? "signature")
            <*> (x .:? "signatureAlgorithm")
            <*> (x .:? "certificateChain")
            <*> (x .:? "hashAlgorithm")
      )

instance Hashable CustomCodeSigning

instance NFData CustomCodeSigning

instance ToJSON CustomCodeSigning where
  toJSON CustomCodeSigning' {..} =
    object
      ( catMaybes
          [ ("signature" .=) <$> _ccsSignature,
            ("signatureAlgorithm" .=) <$> _ccsSignatureAlgorithm,
            ("certificateChain" .=) <$> _ccsCertificateChain,
            ("hashAlgorithm" .=) <$> _ccsHashAlgorithm
          ]
      )
