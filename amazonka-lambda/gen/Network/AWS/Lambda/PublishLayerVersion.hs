{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TypeFamilies #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Lambda.PublishLayerVersion
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates an <https://docs.aws.amazon.com/lambda/latest/dg/configuration-layers.html AWS Lambda layer> from a ZIP archive. Each time you call @PublishLayerVersion@ with the same layer name, a new version is created.
--
--
-- Add layers to your function with 'CreateFunction' or 'UpdateFunctionConfiguration' .
module Network.AWS.Lambda.PublishLayerVersion
  ( -- * Creating a Request
    publishLayerVersion,
    PublishLayerVersion,

    -- * Request Lenses
    plvCompatibleRuntimes,
    plvDescription,
    plvLicenseInfo,
    plvLayerName,
    plvContent,

    -- * Destructuring the Response
    publishLayerVersionResponse,
    PublishLayerVersionResponse,

    -- * Response Lenses
    plvrrsCreatedDate,
    plvrrsLayerARN,
    plvrrsVersion,
    plvrrsLayerVersionARN,
    plvrrsContent,
    plvrrsCompatibleRuntimes,
    plvrrsDescription,
    plvrrsLicenseInfo,
    plvrrsResponseStatus,
  )
where

import Network.AWS.Lambda.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'publishLayerVersion' smart constructor.
data PublishLayerVersion = PublishLayerVersion'
  { _plvCompatibleRuntimes ::
      !(Maybe [Runtime]),
    _plvDescription ::
      !(Maybe Text),
    _plvLicenseInfo ::
      !(Maybe Text),
    _plvLayerName :: !Text,
    _plvContent ::
      !LayerVersionContentInput
  }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'PublishLayerVersion' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plvCompatibleRuntimes' - A list of compatible <https://docs.aws.amazon.com/lambda/latest/dg/lambda-runtimes.html function runtimes> . Used for filtering with 'ListLayers' and 'ListLayerVersions' .
--
-- * 'plvDescription' - The description of the version.
--
-- * 'plvLicenseInfo' - The layer's software license. It can be any of the following:     * An <https://spdx.org/licenses/ SPDX license identifier> . For example, @MIT@ .     * The URL of a license hosted on the internet. For example, @https://opensource.org/licenses/MIT@ .     * The full text of the license.
--
-- * 'plvLayerName' - The name or Amazon Resource Name (ARN) of the layer.
--
-- * 'plvContent' - The function layer archive.
publishLayerVersion ::
  -- | 'plvLayerName'
  Text ->
  -- | 'plvContent'
  LayerVersionContentInput ->
  PublishLayerVersion
publishLayerVersion pLayerName_ pContent_ =
  PublishLayerVersion'
    { _plvCompatibleRuntimes =
        Nothing,
      _plvDescription = Nothing,
      _plvLicenseInfo = Nothing,
      _plvLayerName = pLayerName_,
      _plvContent = pContent_
    }

-- | A list of compatible <https://docs.aws.amazon.com/lambda/latest/dg/lambda-runtimes.html function runtimes> . Used for filtering with 'ListLayers' and 'ListLayerVersions' .
plvCompatibleRuntimes :: Lens' PublishLayerVersion [Runtime]
plvCompatibleRuntimes = lens _plvCompatibleRuntimes (\s a -> s {_plvCompatibleRuntimes = a}) . _Default . _Coerce

-- | The description of the version.
plvDescription :: Lens' PublishLayerVersion (Maybe Text)
plvDescription = lens _plvDescription (\s a -> s {_plvDescription = a})

-- | The layer's software license. It can be any of the following:     * An <https://spdx.org/licenses/ SPDX license identifier> . For example, @MIT@ .     * The URL of a license hosted on the internet. For example, @https://opensource.org/licenses/MIT@ .     * The full text of the license.
plvLicenseInfo :: Lens' PublishLayerVersion (Maybe Text)
plvLicenseInfo = lens _plvLicenseInfo (\s a -> s {_plvLicenseInfo = a})

-- | The name or Amazon Resource Name (ARN) of the layer.
plvLayerName :: Lens' PublishLayerVersion Text
plvLayerName = lens _plvLayerName (\s a -> s {_plvLayerName = a})

-- | The function layer archive.
plvContent :: Lens' PublishLayerVersion LayerVersionContentInput
plvContent = lens _plvContent (\s a -> s {_plvContent = a})

instance AWSRequest PublishLayerVersion where
  type
    Rs PublishLayerVersion =
      PublishLayerVersionResponse
  request = postJSON lambda
  response =
    receiveJSON
      ( \s h x ->
          PublishLayerVersionResponse'
            <$> (x .?> "CreatedDate")
            <*> (x .?> "LayerArn")
            <*> (x .?> "Version")
            <*> (x .?> "LayerVersionArn")
            <*> (x .?> "Content")
            <*> (x .?> "CompatibleRuntimes" .!@ mempty)
            <*> (x .?> "Description")
            <*> (x .?> "LicenseInfo")
            <*> (pure (fromEnum s))
      )

instance Hashable PublishLayerVersion

instance NFData PublishLayerVersion

instance ToHeaders PublishLayerVersion where
  toHeaders = const mempty

instance ToJSON PublishLayerVersion where
  toJSON PublishLayerVersion' {..} =
    object
      ( catMaybes
          [ ("CompatibleRuntimes" .=)
              <$> _plvCompatibleRuntimes,
            ("Description" .=) <$> _plvDescription,
            ("LicenseInfo" .=) <$> _plvLicenseInfo,
            Just ("Content" .= _plvContent)
          ]
      )

instance ToPath PublishLayerVersion where
  toPath PublishLayerVersion' {..} =
    mconcat
      [ "/2018-10-31/layers/",
        toBS _plvLayerName,
        "/versions"
      ]

instance ToQuery PublishLayerVersion where
  toQuery = const mempty

-- | /See:/ 'publishLayerVersionResponse' smart constructor.
data PublishLayerVersionResponse = PublishLayerVersionResponse'
  { _plvrrsCreatedDate ::
      !(Maybe Text),
    _plvrrsLayerARN ::
      !(Maybe Text),
    _plvrrsVersion ::
      !( Maybe
           Integer
       ),
    _plvrrsLayerVersionARN ::
      !(Maybe Text),
    _plvrrsContent ::
      !( Maybe
           LayerVersionContentOutput
       ),
    _plvrrsCompatibleRuntimes ::
      !( Maybe
           [Runtime]
       ),
    _plvrrsDescription ::
      !(Maybe Text),
    _plvrrsLicenseInfo ::
      !(Maybe Text),
    _plvrrsResponseStatus ::
      !Int
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'PublishLayerVersionResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plvrrsCreatedDate' - The date that the layer version was created, in <https://www.w3.org/TR/NOTE-datetime ISO-8601 format> (YYYY-MM-DDThh:mm:ss.sTZD).
--
-- * 'plvrrsLayerARN' - The ARN of the layer.
--
-- * 'plvrrsVersion' - The version number.
--
-- * 'plvrrsLayerVersionARN' - The ARN of the layer version.
--
-- * 'plvrrsContent' - Details about the layer version.
--
-- * 'plvrrsCompatibleRuntimes' - The layer's compatible runtimes.
--
-- * 'plvrrsDescription' - The description of the version.
--
-- * 'plvrrsLicenseInfo' - The layer's software license.
--
-- * 'plvrrsResponseStatus' - -- | The response status code.
publishLayerVersionResponse ::
  -- | 'plvrrsResponseStatus'
  Int ->
  PublishLayerVersionResponse
publishLayerVersionResponse pResponseStatus_ =
  PublishLayerVersionResponse'
    { _plvrrsCreatedDate =
        Nothing,
      _plvrrsLayerARN = Nothing,
      _plvrrsVersion = Nothing,
      _plvrrsLayerVersionARN = Nothing,
      _plvrrsContent = Nothing,
      _plvrrsCompatibleRuntimes = Nothing,
      _plvrrsDescription = Nothing,
      _plvrrsLicenseInfo = Nothing,
      _plvrrsResponseStatus = pResponseStatus_
    }

-- | The date that the layer version was created, in <https://www.w3.org/TR/NOTE-datetime ISO-8601 format> (YYYY-MM-DDThh:mm:ss.sTZD).
plvrrsCreatedDate :: Lens' PublishLayerVersionResponse (Maybe Text)
plvrrsCreatedDate = lens _plvrrsCreatedDate (\s a -> s {_plvrrsCreatedDate = a})

-- | The ARN of the layer.
plvrrsLayerARN :: Lens' PublishLayerVersionResponse (Maybe Text)
plvrrsLayerARN = lens _plvrrsLayerARN (\s a -> s {_plvrrsLayerARN = a})

-- | The version number.
plvrrsVersion :: Lens' PublishLayerVersionResponse (Maybe Integer)
plvrrsVersion = lens _plvrrsVersion (\s a -> s {_plvrrsVersion = a})

-- | The ARN of the layer version.
plvrrsLayerVersionARN :: Lens' PublishLayerVersionResponse (Maybe Text)
plvrrsLayerVersionARN = lens _plvrrsLayerVersionARN (\s a -> s {_plvrrsLayerVersionARN = a})

-- | Details about the layer version.
plvrrsContent :: Lens' PublishLayerVersionResponse (Maybe LayerVersionContentOutput)
plvrrsContent = lens _plvrrsContent (\s a -> s {_plvrrsContent = a})

-- | The layer's compatible runtimes.
plvrrsCompatibleRuntimes :: Lens' PublishLayerVersionResponse [Runtime]
plvrrsCompatibleRuntimes = lens _plvrrsCompatibleRuntimes (\s a -> s {_plvrrsCompatibleRuntimes = a}) . _Default . _Coerce

-- | The description of the version.
plvrrsDescription :: Lens' PublishLayerVersionResponse (Maybe Text)
plvrrsDescription = lens _plvrrsDescription (\s a -> s {_plvrrsDescription = a})

-- | The layer's software license.
plvrrsLicenseInfo :: Lens' PublishLayerVersionResponse (Maybe Text)
plvrrsLicenseInfo = lens _plvrrsLicenseInfo (\s a -> s {_plvrrsLicenseInfo = a})

-- | -- | The response status code.
plvrrsResponseStatus :: Lens' PublishLayerVersionResponse Int
plvrrsResponseStatus = lens _plvrrsResponseStatus (\s a -> s {_plvrrsResponseStatus = a})

instance NFData PublishLayerVersionResponse
