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
-- Module      : Network.AWS.Lightsail.GetAutoSnapshots
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the available automatic snapshots for an instance or disk. For more information, see the <https://lightsail.aws.amazon.com/ls/docs/en_us/articles/amazon-lightsail-configuring-automatic-snapshots Lightsail Dev Guide> .
module Network.AWS.Lightsail.GetAutoSnapshots
  ( -- * Creating a Request
    getAutoSnapshots,
    GetAutoSnapshots,

    -- * Request Lenses
    gasResourceName,

    -- * Destructuring the Response
    getAutoSnapshotsResponse,
    GetAutoSnapshotsResponse,

    -- * Response Lenses
    gasrrsResourceType,
    gasrrsAutoSnapshots,
    gasrrsResourceName,
    gasrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Lightsail.Types
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'getAutoSnapshots' smart constructor.
newtype GetAutoSnapshots = GetAutoSnapshots'
  { _gasResourceName ::
      Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetAutoSnapshots' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gasResourceName' - The name of the source instance or disk from which to get automatic snapshot information.
getAutoSnapshots ::
  -- | 'gasResourceName'
  Text ->
  GetAutoSnapshots
getAutoSnapshots pResourceName_ =
  GetAutoSnapshots'
    { _gasResourceName =
        pResourceName_
    }

-- | The name of the source instance or disk from which to get automatic snapshot information.
gasResourceName :: Lens' GetAutoSnapshots Text
gasResourceName = lens _gasResourceName (\s a -> s {_gasResourceName = a})

instance AWSRequest GetAutoSnapshots where
  type Rs GetAutoSnapshots = GetAutoSnapshotsResponse
  request = postJSON lightsail
  response =
    receiveJSON
      ( \s h x ->
          GetAutoSnapshotsResponse'
            <$> (x .?> "resourceType")
            <*> (x .?> "autoSnapshots" .!@ mempty)
            <*> (x .?> "resourceName")
            <*> (pure (fromEnum s))
      )

instance Hashable GetAutoSnapshots

instance NFData GetAutoSnapshots

instance ToHeaders GetAutoSnapshots where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "Lightsail_20161128.GetAutoSnapshots" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON GetAutoSnapshots where
  toJSON GetAutoSnapshots' {..} =
    object
      ( catMaybes
          [Just ("resourceName" .= _gasResourceName)]
      )

instance ToPath GetAutoSnapshots where
  toPath = const "/"

instance ToQuery GetAutoSnapshots where
  toQuery = const mempty

-- | /See:/ 'getAutoSnapshotsResponse' smart constructor.
data GetAutoSnapshotsResponse = GetAutoSnapshotsResponse'
  { _gasrrsResourceType ::
      !(Maybe ResourceType),
    _gasrrsAutoSnapshots ::
      !( Maybe
           [AutoSnapshotDetails]
       ),
    _gasrrsResourceName ::
      !(Maybe Text),
    _gasrrsResponseStatus ::
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

-- | Creates a value of 'GetAutoSnapshotsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gasrrsResourceType' - The resource type (e.g., @Instance@ or @Disk@ ).
--
-- * 'gasrrsAutoSnapshots' - An array of objects that describe the automatic snapshots that are available for the specified source instance or disk.
--
-- * 'gasrrsResourceName' - The name of the source instance or disk for the automatic snapshots.
--
-- * 'gasrrsResponseStatus' - -- | The response status code.
getAutoSnapshotsResponse ::
  -- | 'gasrrsResponseStatus'
  Int ->
  GetAutoSnapshotsResponse
getAutoSnapshotsResponse pResponseStatus_ =
  GetAutoSnapshotsResponse'
    { _gasrrsResourceType =
        Nothing,
      _gasrrsAutoSnapshots = Nothing,
      _gasrrsResourceName = Nothing,
      _gasrrsResponseStatus = pResponseStatus_
    }

-- | The resource type (e.g., @Instance@ or @Disk@ ).
gasrrsResourceType :: Lens' GetAutoSnapshotsResponse (Maybe ResourceType)
gasrrsResourceType = lens _gasrrsResourceType (\s a -> s {_gasrrsResourceType = a})

-- | An array of objects that describe the automatic snapshots that are available for the specified source instance or disk.
gasrrsAutoSnapshots :: Lens' GetAutoSnapshotsResponse [AutoSnapshotDetails]
gasrrsAutoSnapshots = lens _gasrrsAutoSnapshots (\s a -> s {_gasrrsAutoSnapshots = a}) . _Default . _Coerce

-- | The name of the source instance or disk for the automatic snapshots.
gasrrsResourceName :: Lens' GetAutoSnapshotsResponse (Maybe Text)
gasrrsResourceName = lens _gasrrsResourceName (\s a -> s {_gasrrsResourceName = a})

-- | -- | The response status code.
gasrrsResponseStatus :: Lens' GetAutoSnapshotsResponse Int
gasrrsResponseStatus = lens _gasrrsResponseStatus (\s a -> s {_gasrrsResponseStatus = a})

instance NFData GetAutoSnapshotsResponse
