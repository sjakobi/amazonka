{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Glue.Types.ResourceURI
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Glue.Types.ResourceURI where

import Network.AWS.Glue.Types.ResourceType
import Network.AWS.Lens
import Network.AWS.Prelude

-- | The URIs for function resources.
--
--
--
-- /See:/ 'resourceURI' smart constructor.
data ResourceURI = ResourceURI'
  { _ruURI ::
      !(Maybe Text),
    _ruResourceType :: !(Maybe ResourceType)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ResourceURI' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ruURI' - The URI for accessing the resource.
--
-- * 'ruResourceType' - The type of the resource.
resourceURI ::
  ResourceURI
resourceURI =
  ResourceURI'
    { _ruURI = Nothing,
      _ruResourceType = Nothing
    }

-- | The URI for accessing the resource.
ruURI :: Lens' ResourceURI (Maybe Text)
ruURI = lens _ruURI (\s a -> s {_ruURI = a})

-- | The type of the resource.
ruResourceType :: Lens' ResourceURI (Maybe ResourceType)
ruResourceType = lens _ruResourceType (\s a -> s {_ruResourceType = a})

instance FromJSON ResourceURI where
  parseJSON =
    withObject
      "ResourceURI"
      ( \x ->
          ResourceURI'
            <$> (x .:? "Uri") <*> (x .:? "ResourceType")
      )

instance Hashable ResourceURI

instance NFData ResourceURI

instance ToJSON ResourceURI where
  toJSON ResourceURI' {..} =
    object
      ( catMaybes
          [ ("Uri" .=) <$> _ruURI,
            ("ResourceType" .=) <$> _ruResourceType
          ]
      )
