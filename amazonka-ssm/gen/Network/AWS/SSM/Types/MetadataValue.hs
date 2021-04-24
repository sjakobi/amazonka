{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SSM.Types.MetadataValue
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SSM.Types.MetadataValue where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Metadata to assign to an Application Manager application.
--
--
--
-- /See:/ 'metadataValue' smart constructor.
newtype MetadataValue = MetadataValue'
  { _mvValue ::
      Maybe Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'MetadataValue' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mvValue' - Metadata value to assign to an Application Manager application.
metadataValue ::
  MetadataValue
metadataValue = MetadataValue' {_mvValue = Nothing}

-- | Metadata value to assign to an Application Manager application.
mvValue :: Lens' MetadataValue (Maybe Text)
mvValue = lens _mvValue (\s a -> s {_mvValue = a})

instance FromJSON MetadataValue where
  parseJSON =
    withObject
      "MetadataValue"
      (\x -> MetadataValue' <$> (x .:? "Value"))

instance Hashable MetadataValue

instance NFData MetadataValue

instance ToJSON MetadataValue where
  toJSON MetadataValue' {..} =
    object (catMaybes [("Value" .=) <$> _mvValue])
