{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Lambda.Types.LayerVersionsListItem
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Lambda.Types.LayerVersionsListItem where

import Network.AWS.Lambda.Types.Runtime
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Details about a version of an <https://docs.aws.amazon.com/lambda/latest/dg/configuration-layers.html AWS Lambda layer> .
--
--
--
-- /See:/ 'layerVersionsListItem' smart constructor.
data LayerVersionsListItem = LayerVersionsListItem'
  { _lvliCreatedDate ::
      !(Maybe Text),
    _lvliVersion ::
      !(Maybe Integer),
    _lvliLayerVersionARN ::
      !(Maybe Text),
    _lvliCompatibleRuntimes ::
      !(Maybe [Runtime]),
    _lvliDescription ::
      !(Maybe Text),
    _lvliLicenseInfo ::
      !(Maybe Text)
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'LayerVersionsListItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lvliCreatedDate' - The date that the version was created, in ISO 8601 format. For example, @2018-11-27T15:10:45.123+0000@ .
--
-- * 'lvliVersion' - The version number.
--
-- * 'lvliLayerVersionARN' - The ARN of the layer version.
--
-- * 'lvliCompatibleRuntimes' - The layer's compatible runtimes.
--
-- * 'lvliDescription' - The description of the version.
--
-- * 'lvliLicenseInfo' - The layer's open-source license.
layerVersionsListItem ::
  LayerVersionsListItem
layerVersionsListItem =
  LayerVersionsListItem'
    { _lvliCreatedDate = Nothing,
      _lvliVersion = Nothing,
      _lvliLayerVersionARN = Nothing,
      _lvliCompatibleRuntimes = Nothing,
      _lvliDescription = Nothing,
      _lvliLicenseInfo = Nothing
    }

-- | The date that the version was created, in ISO 8601 format. For example, @2018-11-27T15:10:45.123+0000@ .
lvliCreatedDate :: Lens' LayerVersionsListItem (Maybe Text)
lvliCreatedDate = lens _lvliCreatedDate (\s a -> s {_lvliCreatedDate = a})

-- | The version number.
lvliVersion :: Lens' LayerVersionsListItem (Maybe Integer)
lvliVersion = lens _lvliVersion (\s a -> s {_lvliVersion = a})

-- | The ARN of the layer version.
lvliLayerVersionARN :: Lens' LayerVersionsListItem (Maybe Text)
lvliLayerVersionARN = lens _lvliLayerVersionARN (\s a -> s {_lvliLayerVersionARN = a})

-- | The layer's compatible runtimes.
lvliCompatibleRuntimes :: Lens' LayerVersionsListItem [Runtime]
lvliCompatibleRuntimes = lens _lvliCompatibleRuntimes (\s a -> s {_lvliCompatibleRuntimes = a}) . _Default . _Coerce

-- | The description of the version.
lvliDescription :: Lens' LayerVersionsListItem (Maybe Text)
lvliDescription = lens _lvliDescription (\s a -> s {_lvliDescription = a})

-- | The layer's open-source license.
lvliLicenseInfo :: Lens' LayerVersionsListItem (Maybe Text)
lvliLicenseInfo = lens _lvliLicenseInfo (\s a -> s {_lvliLicenseInfo = a})

instance FromJSON LayerVersionsListItem where
  parseJSON =
    withObject
      "LayerVersionsListItem"
      ( \x ->
          LayerVersionsListItem'
            <$> (x .:? "CreatedDate")
            <*> (x .:? "Version")
            <*> (x .:? "LayerVersionArn")
            <*> (x .:? "CompatibleRuntimes" .!= mempty)
            <*> (x .:? "Description")
            <*> (x .:? "LicenseInfo")
      )

instance Hashable LayerVersionsListItem

instance NFData LayerVersionsListItem
