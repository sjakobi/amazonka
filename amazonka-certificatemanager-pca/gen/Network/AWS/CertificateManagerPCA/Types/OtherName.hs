{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CertificateManagerPCA.Types.OtherName
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CertificateManagerPCA.Types.OtherName where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Defines a custom ASN.1 X.400 @GeneralName@ using an object identifier (OID) and value. The OID must satisfy the regular expression shown below. For more information, see NIST's definition of <https://csrc.nist.gov/glossary/term/Object_Identifier Object Identifier (OID)> .
--
--
--
-- /See:/ 'otherName' smart constructor.
data OtherName = OtherName'
  { _onTypeId :: !Text,
    _onValue :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'OtherName' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'onTypeId' - Specifies an OID.
--
-- * 'onValue' - Specifies an OID value.
otherName ::
  -- | 'onTypeId'
  Text ->
  -- | 'onValue'
  Text ->
  OtherName
otherName pTypeId_ pValue_ =
  OtherName'
    { _onTypeId = pTypeId_,
      _onValue = pValue_
    }

-- | Specifies an OID.
onTypeId :: Lens' OtherName Text
onTypeId = lens _onTypeId (\s a -> s {_onTypeId = a})

-- | Specifies an OID value.
onValue :: Lens' OtherName Text
onValue = lens _onValue (\s a -> s {_onValue = a})

instance FromJSON OtherName where
  parseJSON =
    withObject
      "OtherName"
      ( \x ->
          OtherName' <$> (x .: "TypeId") <*> (x .: "Value")
      )

instance Hashable OtherName

instance NFData OtherName

instance ToJSON OtherName where
  toJSON OtherName' {..} =
    object
      ( catMaybes
          [ Just ("TypeId" .= _onTypeId),
            Just ("Value" .= _onValue)
          ]
      )
