{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CertificateManagerPCA.Types.AccessMethod
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CertificateManagerPCA.Types.AccessMethod where

import Network.AWS.CertificateManagerPCA.Types.AccessMethodType
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Describes the type and format of extension access. Only one of @CustomObjectIdentifier@ or @AccessMethodType@ may be provided. Providing both results in @InvalidArgsException@ .
--
--
--
-- /See:/ 'accessMethod' smart constructor.
data AccessMethod = AccessMethod'
  { _amAccessMethodType ::
      !(Maybe AccessMethodType),
    _amCustomObjectIdentifier :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'AccessMethod' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'amAccessMethodType' - Specifies the @AccessMethod@ .
--
-- * 'amCustomObjectIdentifier' - An object identifier (OID) specifying the @AccessMethod@ . The OID must satisfy the regular expression shown below. For more information, see NIST's definition of <https://csrc.nist.gov/glossary/term/Object_Identifier Object Identifier (OID)> .
accessMethod ::
  AccessMethod
accessMethod =
  AccessMethod'
    { _amAccessMethodType = Nothing,
      _amCustomObjectIdentifier = Nothing
    }

-- | Specifies the @AccessMethod@ .
amAccessMethodType :: Lens' AccessMethod (Maybe AccessMethodType)
amAccessMethodType = lens _amAccessMethodType (\s a -> s {_amAccessMethodType = a})

-- | An object identifier (OID) specifying the @AccessMethod@ . The OID must satisfy the regular expression shown below. For more information, see NIST's definition of <https://csrc.nist.gov/glossary/term/Object_Identifier Object Identifier (OID)> .
amCustomObjectIdentifier :: Lens' AccessMethod (Maybe Text)
amCustomObjectIdentifier = lens _amCustomObjectIdentifier (\s a -> s {_amCustomObjectIdentifier = a})

instance FromJSON AccessMethod where
  parseJSON =
    withObject
      "AccessMethod"
      ( \x ->
          AccessMethod'
            <$> (x .:? "AccessMethodType")
            <*> (x .:? "CustomObjectIdentifier")
      )

instance Hashable AccessMethod

instance NFData AccessMethod

instance ToJSON AccessMethod where
  toJSON AccessMethod' {..} =
    object
      ( catMaybes
          [ ("AccessMethodType" .=) <$> _amAccessMethodType,
            ("CustomObjectIdentifier" .=)
              <$> _amCustomObjectIdentifier
          ]
      )
