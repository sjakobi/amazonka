{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Redshift.Types.AccountAttribute
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Redshift.Types.AccountAttribute where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Redshift.Internal
import Network.AWS.Redshift.Types.AttributeValueTarget

-- | A name value pair that describes an aspect of an account.
--
--
--
-- /See:/ 'accountAttribute' smart constructor.
data AccountAttribute = AccountAttribute'
  { _aaAttributeName ::
      !(Maybe Text),
    _aaAttributeValues ::
      !(Maybe [AttributeValueTarget])
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'AccountAttribute' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aaAttributeName' - The name of the attribute.
--
-- * 'aaAttributeValues' - A list of attribute values.
accountAttribute ::
  AccountAttribute
accountAttribute =
  AccountAttribute'
    { _aaAttributeName = Nothing,
      _aaAttributeValues = Nothing
    }

-- | The name of the attribute.
aaAttributeName :: Lens' AccountAttribute (Maybe Text)
aaAttributeName = lens _aaAttributeName (\s a -> s {_aaAttributeName = a})

-- | A list of attribute values.
aaAttributeValues :: Lens' AccountAttribute [AttributeValueTarget]
aaAttributeValues = lens _aaAttributeValues (\s a -> s {_aaAttributeValues = a}) . _Default . _Coerce

instance FromXML AccountAttribute where
  parseXML x =
    AccountAttribute'
      <$> (x .@? "AttributeName")
      <*> ( x .@? "AttributeValues" .!@ mempty
              >>= may (parseXMLList "AttributeValueTarget")
          )

instance Hashable AccountAttribute

instance NFData AccountAttribute
