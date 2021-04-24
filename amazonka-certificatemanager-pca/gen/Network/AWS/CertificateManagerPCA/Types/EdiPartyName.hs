{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CertificateManagerPCA.Types.EdiPartyName
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CertificateManagerPCA.Types.EdiPartyName where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Describes an Electronic Data Interchange (EDI) entity as described in as defined in <https://tools.ietf.org/html/rfc5280 Subject Alternative Name> in RFC 5280.
--
--
--
-- /See:/ 'ediPartyName' smart constructor.
data EdiPartyName = EdiPartyName'
  { _epnNameAssigner ::
      !(Maybe Text),
    _epnPartyName :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'EdiPartyName' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'epnNameAssigner' - Specifies the name assigner.
--
-- * 'epnPartyName' - Specifies the party name.
ediPartyName ::
  -- | 'epnPartyName'
  Text ->
  EdiPartyName
ediPartyName pPartyName_ =
  EdiPartyName'
    { _epnNameAssigner = Nothing,
      _epnPartyName = pPartyName_
    }

-- | Specifies the name assigner.
epnNameAssigner :: Lens' EdiPartyName (Maybe Text)
epnNameAssigner = lens _epnNameAssigner (\s a -> s {_epnNameAssigner = a})

-- | Specifies the party name.
epnPartyName :: Lens' EdiPartyName Text
epnPartyName = lens _epnPartyName (\s a -> s {_epnPartyName = a})

instance FromJSON EdiPartyName where
  parseJSON =
    withObject
      "EdiPartyName"
      ( \x ->
          EdiPartyName'
            <$> (x .:? "NameAssigner") <*> (x .: "PartyName")
      )

instance Hashable EdiPartyName

instance NFData EdiPartyName

instance ToJSON EdiPartyName where
  toJSON EdiPartyName' {..} =
    object
      ( catMaybes
          [ ("NameAssigner" .=) <$> _epnNameAssigner,
            Just ("PartyName" .= _epnPartyName)
          ]
      )
