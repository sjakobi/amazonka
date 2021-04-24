{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ECS.Types.Resource
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ECS.Types.Resource where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Describes the resources available for a container instance.
--
--
--
-- /See:/ 'resource' smart constructor.
data Resource = Resource'
  { _rStringSetValue ::
      !(Maybe [Text]),
    _rDoubleValue :: !(Maybe Double),
    _rName :: !(Maybe Text),
    _rLongValue :: !(Maybe Integer),
    _rType :: !(Maybe Text),
    _rIntegerValue :: !(Maybe Int)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'Resource' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rStringSetValue' - When the @stringSetValue@ type is set, the value of the resource must be a string type.
--
-- * 'rDoubleValue' - When the @doubleValue@ type is set, the value of the resource must be a double precision floating-point type.
--
-- * 'rName' - The name of the resource, such as @CPU@ , @MEMORY@ , @PORTS@ , @PORTS_UDP@ , or a user-defined resource.
--
-- * 'rLongValue' - When the @longValue@ type is set, the value of the resource must be an extended precision floating-point type.
--
-- * 'rType' - The type of the resource, such as @INTEGER@ , @DOUBLE@ , @LONG@ , or @STRINGSET@ .
--
-- * 'rIntegerValue' - When the @integerValue@ type is set, the value of the resource must be an integer.
resource ::
  Resource
resource =
  Resource'
    { _rStringSetValue = Nothing,
      _rDoubleValue = Nothing,
      _rName = Nothing,
      _rLongValue = Nothing,
      _rType = Nothing,
      _rIntegerValue = Nothing
    }

-- | When the @stringSetValue@ type is set, the value of the resource must be a string type.
rStringSetValue :: Lens' Resource [Text]
rStringSetValue = lens _rStringSetValue (\s a -> s {_rStringSetValue = a}) . _Default . _Coerce

-- | When the @doubleValue@ type is set, the value of the resource must be a double precision floating-point type.
rDoubleValue :: Lens' Resource (Maybe Double)
rDoubleValue = lens _rDoubleValue (\s a -> s {_rDoubleValue = a})

-- | The name of the resource, such as @CPU@ , @MEMORY@ , @PORTS@ , @PORTS_UDP@ , or a user-defined resource.
rName :: Lens' Resource (Maybe Text)
rName = lens _rName (\s a -> s {_rName = a})

-- | When the @longValue@ type is set, the value of the resource must be an extended precision floating-point type.
rLongValue :: Lens' Resource (Maybe Integer)
rLongValue = lens _rLongValue (\s a -> s {_rLongValue = a})

-- | The type of the resource, such as @INTEGER@ , @DOUBLE@ , @LONG@ , or @STRINGSET@ .
rType :: Lens' Resource (Maybe Text)
rType = lens _rType (\s a -> s {_rType = a})

-- | When the @integerValue@ type is set, the value of the resource must be an integer.
rIntegerValue :: Lens' Resource (Maybe Int)
rIntegerValue = lens _rIntegerValue (\s a -> s {_rIntegerValue = a})

instance FromJSON Resource where
  parseJSON =
    withObject
      "Resource"
      ( \x ->
          Resource'
            <$> (x .:? "stringSetValue" .!= mempty)
            <*> (x .:? "doubleValue")
            <*> (x .:? "name")
            <*> (x .:? "longValue")
            <*> (x .:? "type")
            <*> (x .:? "integerValue")
      )

instance Hashable Resource

instance NFData Resource

instance ToJSON Resource where
  toJSON Resource' {..} =
    object
      ( catMaybes
          [ ("stringSetValue" .=) <$> _rStringSetValue,
            ("doubleValue" .=) <$> _rDoubleValue,
            ("name" .=) <$> _rName,
            ("longValue" .=) <$> _rLongValue,
            ("type" .=) <$> _rType,
            ("integerValue" .=) <$> _rIntegerValue
          ]
      )
