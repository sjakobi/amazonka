{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Connect.Types.Attribute
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Connect.Types.Attribute where

import Network.AWS.Connect.Types.InstanceAttributeType
import Network.AWS.Lens
import Network.AWS.Prelude

-- | A toggle for an individual feature at the instance level.
--
--
--
-- /See:/ 'attribute' smart constructor.
data Attribute = Attribute'
  { _aAttributeType ::
      !(Maybe InstanceAttributeType),
    _aValue :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'Attribute' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aAttributeType' - The type of attribute.
--
-- * 'aValue' - The value of the attribute.
attribute ::
  Attribute
attribute =
  Attribute'
    { _aAttributeType = Nothing,
      _aValue = Nothing
    }

-- | The type of attribute.
aAttributeType :: Lens' Attribute (Maybe InstanceAttributeType)
aAttributeType = lens _aAttributeType (\s a -> s {_aAttributeType = a})

-- | The value of the attribute.
aValue :: Lens' Attribute (Maybe Text)
aValue = lens _aValue (\s a -> s {_aValue = a})

instance FromJSON Attribute where
  parseJSON =
    withObject
      "Attribute"
      ( \x ->
          Attribute'
            <$> (x .:? "AttributeType") <*> (x .:? "Value")
      )

instance Hashable Attribute

instance NFData Attribute
