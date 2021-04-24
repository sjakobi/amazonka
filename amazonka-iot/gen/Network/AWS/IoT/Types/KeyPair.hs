{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.IoT.Types.KeyPair
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IoT.Types.KeyPair where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Describes a key pair.
--
--
--
-- /See:/ 'keyPair' smart constructor.
data KeyPair = KeyPair'
  { _kpPublicKey ::
      !(Maybe Text),
    _kpPrivateKey :: !(Maybe (Sensitive Text))
  }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'KeyPair' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'kpPublicKey' - The public key.
--
-- * 'kpPrivateKey' - The private key.
keyPair ::
  KeyPair
keyPair =
  KeyPair'
    { _kpPublicKey = Nothing,
      _kpPrivateKey = Nothing
    }

-- | The public key.
kpPublicKey :: Lens' KeyPair (Maybe Text)
kpPublicKey = lens _kpPublicKey (\s a -> s {_kpPublicKey = a})

-- | The private key.
kpPrivateKey :: Lens' KeyPair (Maybe Text)
kpPrivateKey = lens _kpPrivateKey (\s a -> s {_kpPrivateKey = a}) . mapping _Sensitive

instance FromJSON KeyPair where
  parseJSON =
    withObject
      "KeyPair"
      ( \x ->
          KeyPair'
            <$> (x .:? "PublicKey") <*> (x .:? "PrivateKey")
      )

instance Hashable KeyPair

instance NFData KeyPair
