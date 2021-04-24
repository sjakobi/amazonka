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
-- Module      : Network.AWS.Mobile.ExportProject
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Exports project configuration to a snapshot which can be downloaded and shared. Note that mobile app push credentials are encrypted in exported projects, so they can only be shared successfully within the same AWS account.
module Network.AWS.Mobile.ExportProject
  ( -- * Creating a Request
    exportProject,
    ExportProject,

    -- * Request Lenses
    epProjectId,

    -- * Destructuring the Response
    exportProjectResponse,
    ExportProjectResponse,

    -- * Response Lenses
    eprrsDownloadURL,
    eprrsSnapshotId,
    eprrsShareURL,
    eprrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Mobile.Types
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Request structure used in requests to export project configuration details.
--
--
--
-- /See:/ 'exportProject' smart constructor.
newtype ExportProject = ExportProject'
  { _epProjectId ::
      Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ExportProject' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'epProjectId' - Unique project identifier.
exportProject ::
  -- | 'epProjectId'
  Text ->
  ExportProject
exportProject pProjectId_ =
  ExportProject' {_epProjectId = pProjectId_}

-- | Unique project identifier.
epProjectId :: Lens' ExportProject Text
epProjectId = lens _epProjectId (\s a -> s {_epProjectId = a})

instance AWSRequest ExportProject where
  type Rs ExportProject = ExportProjectResponse
  request = postJSON mobile
  response =
    receiveJSON
      ( \s h x ->
          ExportProjectResponse'
            <$> (x .?> "downloadUrl")
            <*> (x .?> "snapshotId")
            <*> (x .?> "shareUrl")
            <*> (pure (fromEnum s))
      )

instance Hashable ExportProject

instance NFData ExportProject

instance ToHeaders ExportProject where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON ExportProject where
  toJSON = const (Object mempty)

instance ToPath ExportProject where
  toPath ExportProject' {..} =
    mconcat ["/exports/", toBS _epProjectId]

instance ToQuery ExportProject where
  toQuery = const mempty

-- | Result structure used for requests to export project configuration details.
--
--
--
-- /See:/ 'exportProjectResponse' smart constructor.
data ExportProjectResponse = ExportProjectResponse'
  { _eprrsDownloadURL ::
      !(Maybe Text),
    _eprrsSnapshotId ::
      !(Maybe Text),
    _eprrsShareURL ::
      !(Maybe Text),
    _eprrsResponseStatus ::
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

-- | Creates a value of 'ExportProjectResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eprrsDownloadURL' - URL which can be used to download the exported project configuation file(s).
--
-- * 'eprrsSnapshotId' - Unique identifier for the exported snapshot of the project configuration. This snapshot identifier is included in the share URL.
--
-- * 'eprrsShareURL' - URL which can be shared to allow other AWS users to create their own project in AWS Mobile Hub with the same configuration as the specified project. This URL pertains to a snapshot in time of the project configuration that is created when this API is called. If you want to share additional changes to your project configuration, then you will need to create and share a new snapshot by calling this method again.
--
-- * 'eprrsResponseStatus' - -- | The response status code.
exportProjectResponse ::
  -- | 'eprrsResponseStatus'
  Int ->
  ExportProjectResponse
exportProjectResponse pResponseStatus_ =
  ExportProjectResponse'
    { _eprrsDownloadURL = Nothing,
      _eprrsSnapshotId = Nothing,
      _eprrsShareURL = Nothing,
      _eprrsResponseStatus = pResponseStatus_
    }

-- | URL which can be used to download the exported project configuation file(s).
eprrsDownloadURL :: Lens' ExportProjectResponse (Maybe Text)
eprrsDownloadURL = lens _eprrsDownloadURL (\s a -> s {_eprrsDownloadURL = a})

-- | Unique identifier for the exported snapshot of the project configuration. This snapshot identifier is included in the share URL.
eprrsSnapshotId :: Lens' ExportProjectResponse (Maybe Text)
eprrsSnapshotId = lens _eprrsSnapshotId (\s a -> s {_eprrsSnapshotId = a})

-- | URL which can be shared to allow other AWS users to create their own project in AWS Mobile Hub with the same configuration as the specified project. This URL pertains to a snapshot in time of the project configuration that is created when this API is called. If you want to share additional changes to your project configuration, then you will need to create and share a new snapshot by calling this method again.
eprrsShareURL :: Lens' ExportProjectResponse (Maybe Text)
eprrsShareURL = lens _eprrsShareURL (\s a -> s {_eprrsShareURL = a})

-- | -- | The response status code.
eprrsResponseStatus :: Lens' ExportProjectResponse Int
eprrsResponseStatus = lens _eprrsResponseStatus (\s a -> s {_eprrsResponseStatus = a})

instance NFData ExportProjectResponse
