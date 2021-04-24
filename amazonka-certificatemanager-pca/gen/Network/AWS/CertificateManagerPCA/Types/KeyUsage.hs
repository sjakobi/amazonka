{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CertificateManagerPCA.Types.KeyUsage
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CertificateManagerPCA.Types.KeyUsage where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Defines one or more purposes for which the key contained in the certificate can be used. Default value for each option is false.
--
--
--
-- /See:/ 'keyUsage' smart constructor.
data KeyUsage = KeyUsage'
  { _kuDataEncipherment ::
      !(Maybe Bool),
    _kuKeyCertSign :: !(Maybe Bool),
    _kuCRLSign :: !(Maybe Bool),
    _kuKeyEncipherment :: !(Maybe Bool),
    _kuEncipherOnly :: !(Maybe Bool),
    _kuKeyAgreement :: !(Maybe Bool),
    _kuDigitalSignature :: !(Maybe Bool),
    _kuDecipherOnly :: !(Maybe Bool),
    _kuNonRepudiation :: !(Maybe Bool)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'KeyUsage' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'kuDataEncipherment' - Key can be used to decipher data.
--
-- * 'kuKeyCertSign' - Key can be used to sign certificates.
--
-- * 'kuCRLSign' - Key can be used to sign CRLs.
--
-- * 'kuKeyEncipherment' - Key can be used to encipher data.
--
-- * 'kuEncipherOnly' - Key can be used only to encipher data.
--
-- * 'kuKeyAgreement' - Key can be used in a key-agreement protocol.
--
-- * 'kuDigitalSignature' - Key can be used for digital signing.
--
-- * 'kuDecipherOnly' - Key can be used only to decipher data.
--
-- * 'kuNonRepudiation' - Key can be used for non-repudiation.
keyUsage ::
  KeyUsage
keyUsage =
  KeyUsage'
    { _kuDataEncipherment = Nothing,
      _kuKeyCertSign = Nothing,
      _kuCRLSign = Nothing,
      _kuKeyEncipherment = Nothing,
      _kuEncipherOnly = Nothing,
      _kuKeyAgreement = Nothing,
      _kuDigitalSignature = Nothing,
      _kuDecipherOnly = Nothing,
      _kuNonRepudiation = Nothing
    }

-- | Key can be used to decipher data.
kuDataEncipherment :: Lens' KeyUsage (Maybe Bool)
kuDataEncipherment = lens _kuDataEncipherment (\s a -> s {_kuDataEncipherment = a})

-- | Key can be used to sign certificates.
kuKeyCertSign :: Lens' KeyUsage (Maybe Bool)
kuKeyCertSign = lens _kuKeyCertSign (\s a -> s {_kuKeyCertSign = a})

-- | Key can be used to sign CRLs.
kuCRLSign :: Lens' KeyUsage (Maybe Bool)
kuCRLSign = lens _kuCRLSign (\s a -> s {_kuCRLSign = a})

-- | Key can be used to encipher data.
kuKeyEncipherment :: Lens' KeyUsage (Maybe Bool)
kuKeyEncipherment = lens _kuKeyEncipherment (\s a -> s {_kuKeyEncipherment = a})

-- | Key can be used only to encipher data.
kuEncipherOnly :: Lens' KeyUsage (Maybe Bool)
kuEncipherOnly = lens _kuEncipherOnly (\s a -> s {_kuEncipherOnly = a})

-- | Key can be used in a key-agreement protocol.
kuKeyAgreement :: Lens' KeyUsage (Maybe Bool)
kuKeyAgreement = lens _kuKeyAgreement (\s a -> s {_kuKeyAgreement = a})

-- | Key can be used for digital signing.
kuDigitalSignature :: Lens' KeyUsage (Maybe Bool)
kuDigitalSignature = lens _kuDigitalSignature (\s a -> s {_kuDigitalSignature = a})

-- | Key can be used only to decipher data.
kuDecipherOnly :: Lens' KeyUsage (Maybe Bool)
kuDecipherOnly = lens _kuDecipherOnly (\s a -> s {_kuDecipherOnly = a})

-- | Key can be used for non-repudiation.
kuNonRepudiation :: Lens' KeyUsage (Maybe Bool)
kuNonRepudiation = lens _kuNonRepudiation (\s a -> s {_kuNonRepudiation = a})

instance FromJSON KeyUsage where
  parseJSON =
    withObject
      "KeyUsage"
      ( \x ->
          KeyUsage'
            <$> (x .:? "DataEncipherment")
            <*> (x .:? "KeyCertSign")
            <*> (x .:? "CRLSign")
            <*> (x .:? "KeyEncipherment")
            <*> (x .:? "EncipherOnly")
            <*> (x .:? "KeyAgreement")
            <*> (x .:? "DigitalSignature")
            <*> (x .:? "DecipherOnly")
            <*> (x .:? "NonRepudiation")
      )

instance Hashable KeyUsage

instance NFData KeyUsage

instance ToJSON KeyUsage where
  toJSON KeyUsage' {..} =
    object
      ( catMaybes
          [ ("DataEncipherment" .=) <$> _kuDataEncipherment,
            ("KeyCertSign" .=) <$> _kuKeyCertSign,
            ("CRLSign" .=) <$> _kuCRLSign,
            ("KeyEncipherment" .=) <$> _kuKeyEncipherment,
            ("EncipherOnly" .=) <$> _kuEncipherOnly,
            ("KeyAgreement" .=) <$> _kuKeyAgreement,
            ("DigitalSignature" .=) <$> _kuDigitalSignature,
            ("DecipherOnly" .=) <$> _kuDecipherOnly,
            ("NonRepudiation" .=) <$> _kuNonRepudiation
          ]
      )
