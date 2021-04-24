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
-- Module      : Network.AWS.Mobile.ExportBundle
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Generates customized software development kit (SDK) and or tool packages used to integrate mobile web or mobile app clients with backend AWS resources.
module Network.AWS.Mobile.ExportBundle
  ( -- * Creating a Request
    exportBundle,
    ExportBundle,

    -- * Request Lenses
    ebPlatform,
    ebProjectId,
    ebBundleId,

    -- * Destructuring the Response
    exportBundleResponse,
    ExportBundleResponse,

    -- * Response Lenses
    ebrrsDownloadURL,
    ebrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Mobile.Types
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Request structure used to request generation of custom SDK and tool packages required to integrate mobile web or app clients with backed AWS resources.
--
--
--
-- /See:/ 'exportBundle' smart constructor.
data ExportBundle = ExportBundle'
  { _ebPlatform ::
      !(Maybe Platform),
    _ebProjectId :: !(Maybe Text),
    _ebBundleId :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ExportBundle' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ebPlatform' - Developer desktop or target application platform.
--
-- * 'ebProjectId' - Unique project identifier.
--
-- * 'ebBundleId' - Unique bundle identifier.
exportBundle ::
  -- | 'ebBundleId'
  Text ->
  ExportBundle
exportBundle pBundleId_ =
  ExportBundle'
    { _ebPlatform = Nothing,
      _ebProjectId = Nothing,
      _ebBundleId = pBundleId_
    }

-- | Developer desktop or target application platform.
ebPlatform :: Lens' ExportBundle (Maybe Platform)
ebPlatform = lens _ebPlatform (\s a -> s {_ebPlatform = a})

-- | Unique project identifier.
ebProjectId :: Lens' ExportBundle (Maybe Text)
ebProjectId = lens _ebProjectId (\s a -> s {_ebProjectId = a})

-- | Unique bundle identifier.
ebBundleId :: Lens' ExportBundle Text
ebBundleId = lens _ebBundleId (\s a -> s {_ebBundleId = a})

instance AWSRequest ExportBundle where
  type Rs ExportBundle = ExportBundleResponse
  request = postJSON mobile
  response =
    receiveJSON
      ( \s h x ->
          ExportBundleResponse'
            <$> (x .?> "downloadUrl") <*> (pure (fromEnum s))
      )

instance Hashable ExportBundle

instance NFData ExportBundle

instance ToHeaders ExportBundle where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON ExportBundle where
  toJSON = const (Object mempty)

instance ToPath ExportBundle where
  toPath ExportBundle' {..} =
    mconcat ["/bundles/", toBS _ebBundleId]

instance ToQuery ExportBundle where
  toQuery ExportBundle' {..} =
    mconcat
      [ "platform" =: _ebPlatform,
        "projectId" =: _ebProjectId
      ]

-- | Result structure which contains link to download custom-generated SDK and tool packages used to integrate mobile web or app clients with backed AWS resources.
--
--
--
-- /See:/ 'exportBundleResponse' smart constructor.
data ExportBundleResponse = ExportBundleResponse'
  { _ebrrsDownloadURL ::
      !(Maybe Text),
    _ebrrsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ExportBundleResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ebrrsDownloadURL' - URL which contains the custom-generated SDK and tool packages used to integrate the client mobile app or web app with the AWS resources created by the AWS Mobile Hub project.
--
-- * 'ebrrsResponseStatus' - -- | The response status code.
exportBundleResponse ::
  -- | 'ebrrsResponseStatus'
  Int ->
  ExportBundleResponse
exportBundleResponse pResponseStatus_ =
  ExportBundleResponse'
    { _ebrrsDownloadURL = Nothing,
      _ebrrsResponseStatus = pResponseStatus_
    }

-- | URL which contains the custom-generated SDK and tool packages used to integrate the client mobile app or web app with the AWS resources created by the AWS Mobile Hub project.
ebrrsDownloadURL :: Lens' ExportBundleResponse (Maybe Text)
ebrrsDownloadURL = lens _ebrrsDownloadURL (\s a -> s {_ebrrsDownloadURL = a})

-- | -- | The response status code.
ebrrsResponseStatus :: Lens' ExportBundleResponse Int
ebrrsResponseStatus = lens _ebrrsResponseStatus (\s a -> s {_ebrrsResponseStatus = a})

instance NFData ExportBundleResponse
