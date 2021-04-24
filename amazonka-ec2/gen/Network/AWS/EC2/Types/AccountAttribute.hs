{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.AccountAttribute
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.AccountAttribute where

import Network.AWS.EC2.Internal
import Network.AWS.EC2.Types.AccountAttributeValue
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Describes an account attribute.
--
--
--
-- /See:/ 'accountAttribute' smart constructor.
data AccountAttribute = AccountAttribute'
  { _aaAttributeName ::
      !(Maybe Text),
    _aaAttributeValues ::
      !(Maybe [AccountAttributeValue])
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'AccountAttribute' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aaAttributeName' - The name of the account attribute.
--
-- * 'aaAttributeValues' - The values for the account attribute.
accountAttribute ::
  AccountAttribute
accountAttribute =
  AccountAttribute'
    { _aaAttributeName = Nothing,
      _aaAttributeValues = Nothing
    }

-- | The name of the account attribute.
aaAttributeName :: Lens' AccountAttribute (Maybe Text)
aaAttributeName = lens _aaAttributeName (\s a -> s {_aaAttributeName = a})

-- | The values for the account attribute.
aaAttributeValues :: Lens' AccountAttribute [AccountAttributeValue]
aaAttributeValues = lens _aaAttributeValues (\s a -> s {_aaAttributeValues = a}) . _Default . _Coerce

instance FromXML AccountAttribute where
  parseXML x =
    AccountAttribute'
      <$> (x .@? "attributeName")
      <*> ( x .@? "attributeValueSet" .!@ mempty
              >>= may (parseXMLList "item")
          )

instance Hashable AccountAttribute

instance NFData AccountAttribute
