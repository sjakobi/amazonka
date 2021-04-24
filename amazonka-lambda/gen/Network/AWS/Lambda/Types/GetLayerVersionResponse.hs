{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Lambda.Types.GetLayerVersionResponse
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Lambda.Types.GetLayerVersionResponse where

import Network.AWS.Lambda.Types.LayerVersionContentOutput
import Network.AWS.Lambda.Types.Runtime
import Network.AWS.Lens
import Network.AWS.Prelude

-- | /See:/ 'getLayerVersionResponse' smart constructor.
data GetLayerVersionResponse = GetLayerVersionResponse'
  { _glvrCreatedDate ::
      !(Maybe Text),
    _glvrLayerARN ::
      !(Maybe Text),
    _glvrVersion ::
      !(Maybe Integer),
    _glvrLayerVersionARN ::
      !(Maybe Text),
    _glvrContent ::
      !( Maybe
           LayerVersionContentOutput
       ),
    _glvrCompatibleRuntimes ::
      !(Maybe [Runtime]),
    _glvrDescription ::
      !(Maybe Text),
    _glvrLicenseInfo ::
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

-- | Creates a value of 'GetLayerVersionResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'glvrCreatedDate' - The date that the layer version was created, in <https://www.w3.org/TR/NOTE-datetime ISO-8601 format> (YYYY-MM-DDThh:mm:ss.sTZD).
--
-- * 'glvrLayerARN' - The ARN of the layer.
--
-- * 'glvrVersion' - The version number.
--
-- * 'glvrLayerVersionARN' - The ARN of the layer version.
--
-- * 'glvrContent' - Details about the layer version.
--
-- * 'glvrCompatibleRuntimes' - The layer's compatible runtimes.
--
-- * 'glvrDescription' - The description of the version.
--
-- * 'glvrLicenseInfo' - The layer's software license.
getLayerVersionResponse ::
  GetLayerVersionResponse
getLayerVersionResponse =
  GetLayerVersionResponse'
    { _glvrCreatedDate =
        Nothing,
      _glvrLayerARN = Nothing,
      _glvrVersion = Nothing,
      _glvrLayerVersionARN = Nothing,
      _glvrContent = Nothing,
      _glvrCompatibleRuntimes = Nothing,
      _glvrDescription = Nothing,
      _glvrLicenseInfo = Nothing
    }

-- | The date that the layer version was created, in <https://www.w3.org/TR/NOTE-datetime ISO-8601 format> (YYYY-MM-DDThh:mm:ss.sTZD).
glvrCreatedDate :: Lens' GetLayerVersionResponse (Maybe Text)
glvrCreatedDate = lens _glvrCreatedDate (\s a -> s {_glvrCreatedDate = a})

-- | The ARN of the layer.
glvrLayerARN :: Lens' GetLayerVersionResponse (Maybe Text)
glvrLayerARN = lens _glvrLayerARN (\s a -> s {_glvrLayerARN = a})

-- | The version number.
glvrVersion :: Lens' GetLayerVersionResponse (Maybe Integer)
glvrVersion = lens _glvrVersion (\s a -> s {_glvrVersion = a})

-- | The ARN of the layer version.
glvrLayerVersionARN :: Lens' GetLayerVersionResponse (Maybe Text)
glvrLayerVersionARN = lens _glvrLayerVersionARN (\s a -> s {_glvrLayerVersionARN = a})

-- | Details about the layer version.
glvrContent :: Lens' GetLayerVersionResponse (Maybe LayerVersionContentOutput)
glvrContent = lens _glvrContent (\s a -> s {_glvrContent = a})

-- | The layer's compatible runtimes.
glvrCompatibleRuntimes :: Lens' GetLayerVersionResponse [Runtime]
glvrCompatibleRuntimes = lens _glvrCompatibleRuntimes (\s a -> s {_glvrCompatibleRuntimes = a}) . _Default . _Coerce

-- | The description of the version.
glvrDescription :: Lens' GetLayerVersionResponse (Maybe Text)
glvrDescription = lens _glvrDescription (\s a -> s {_glvrDescription = a})

-- | The layer's software license.
glvrLicenseInfo :: Lens' GetLayerVersionResponse (Maybe Text)
glvrLicenseInfo = lens _glvrLicenseInfo (\s a -> s {_glvrLicenseInfo = a})

instance FromJSON GetLayerVersionResponse where
  parseJSON =
    withObject
      "GetLayerVersionResponse"
      ( \x ->
          GetLayerVersionResponse'
            <$> (x .:? "CreatedDate")
            <*> (x .:? "LayerArn")
            <*> (x .:? "Version")
            <*> (x .:? "LayerVersionArn")
            <*> (x .:? "Content")
            <*> (x .:? "CompatibleRuntimes" .!= mempty)
            <*> (x .:? "Description")
            <*> (x .:? "LicenseInfo")
      )

instance Hashable GetLayerVersionResponse

instance NFData GetLayerVersionResponse
