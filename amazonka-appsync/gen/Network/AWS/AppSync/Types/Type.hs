{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.AppSync.Types.Type
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AppSync.Types.Type where

import Network.AWS.AppSync.Types.TypeDefinitionFormat
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Describes a type.
--
--
--
-- /See:/ 'type'' smart constructor.
data Type = Type'
  { _tFormat ::
      !(Maybe TypeDefinitionFormat),
    _tArn :: !(Maybe Text),
    _tName :: !(Maybe Text),
    _tDescription :: !(Maybe Text),
    _tDefinition :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'Type' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tFormat' - The type format: SDL or JSON.
--
-- * 'tArn' - The type ARN.
--
-- * 'tName' - The type name.
--
-- * 'tDescription' - The type description.
--
-- * 'tDefinition' - The type definition.
type' ::
  Type
type' =
  Type'
    { _tFormat = Nothing,
      _tArn = Nothing,
      _tName = Nothing,
      _tDescription = Nothing,
      _tDefinition = Nothing
    }

-- | The type format: SDL or JSON.
tFormat :: Lens' Type (Maybe TypeDefinitionFormat)
tFormat = lens _tFormat (\s a -> s {_tFormat = a})

-- | The type ARN.
tArn :: Lens' Type (Maybe Text)
tArn = lens _tArn (\s a -> s {_tArn = a})

-- | The type name.
tName :: Lens' Type (Maybe Text)
tName = lens _tName (\s a -> s {_tName = a})

-- | The type description.
tDescription :: Lens' Type (Maybe Text)
tDescription = lens _tDescription (\s a -> s {_tDescription = a})

-- | The type definition.
tDefinition :: Lens' Type (Maybe Text)
tDefinition = lens _tDefinition (\s a -> s {_tDefinition = a})

instance FromJSON Type where
  parseJSON =
    withObject
      "Type"
      ( \x ->
          Type'
            <$> (x .:? "format")
            <*> (x .:? "arn")
            <*> (x .:? "name")
            <*> (x .:? "description")
            <*> (x .:? "definition")
      )

instance Hashable Type

instance NFData Type
