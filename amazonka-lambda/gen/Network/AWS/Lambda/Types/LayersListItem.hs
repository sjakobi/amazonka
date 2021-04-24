{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Lambda.Types.LayersListItem
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Lambda.Types.LayersListItem where

import Network.AWS.Lambda.Types.LayerVersionsListItem
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Details about an <https://docs.aws.amazon.com/lambda/latest/dg/configuration-layers.html AWS Lambda layer> .
--
--
--
-- /See:/ 'layersListItem' smart constructor.
data LayersListItem = LayersListItem'
  { _lliLayerARN ::
      !(Maybe Text),
    _lliLayerName :: !(Maybe Text),
    _lliLatestMatchingVersion ::
      !(Maybe LayerVersionsListItem)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'LayersListItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lliLayerARN' - The Amazon Resource Name (ARN) of the function layer.
--
-- * 'lliLayerName' - The name of the layer.
--
-- * 'lliLatestMatchingVersion' - The newest version of the layer.
layersListItem ::
  LayersListItem
layersListItem =
  LayersListItem'
    { _lliLayerARN = Nothing,
      _lliLayerName = Nothing,
      _lliLatestMatchingVersion = Nothing
    }

-- | The Amazon Resource Name (ARN) of the function layer.
lliLayerARN :: Lens' LayersListItem (Maybe Text)
lliLayerARN = lens _lliLayerARN (\s a -> s {_lliLayerARN = a})

-- | The name of the layer.
lliLayerName :: Lens' LayersListItem (Maybe Text)
lliLayerName = lens _lliLayerName (\s a -> s {_lliLayerName = a})

-- | The newest version of the layer.
lliLatestMatchingVersion :: Lens' LayersListItem (Maybe LayerVersionsListItem)
lliLatestMatchingVersion = lens _lliLatestMatchingVersion (\s a -> s {_lliLatestMatchingVersion = a})

instance FromJSON LayersListItem where
  parseJSON =
    withObject
      "LayersListItem"
      ( \x ->
          LayersListItem'
            <$> (x .:? "LayerArn")
            <*> (x .:? "LayerName")
            <*> (x .:? "LatestMatchingVersion")
      )

instance Hashable LayersListItem

instance NFData LayersListItem
