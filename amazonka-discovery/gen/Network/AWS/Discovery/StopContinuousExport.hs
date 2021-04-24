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
-- Module      : Network.AWS.Discovery.StopContinuousExport
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Stop the continuous flow of agent's discovered data into Amazon Athena.
module Network.AWS.Discovery.StopContinuousExport
  ( -- * Creating a Request
    stopContinuousExport,
    StopContinuousExport,

    -- * Request Lenses
    sceExportId,

    -- * Destructuring the Response
    stopContinuousExportResponse,
    StopContinuousExportResponse,

    -- * Response Lenses
    scerrsStartTime,
    scerrsStopTime,
    scerrsResponseStatus,
  )
where

import Network.AWS.Discovery.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'stopContinuousExport' smart constructor.
newtype StopContinuousExport = StopContinuousExport'
  { _sceExportId ::
      Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'StopContinuousExport' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sceExportId' - The unique ID assigned to this export.
stopContinuousExport ::
  -- | 'sceExportId'
  Text ->
  StopContinuousExport
stopContinuousExport pExportId_ =
  StopContinuousExport' {_sceExportId = pExportId_}

-- | The unique ID assigned to this export.
sceExportId :: Lens' StopContinuousExport Text
sceExportId = lens _sceExportId (\s a -> s {_sceExportId = a})

instance AWSRequest StopContinuousExport where
  type
    Rs StopContinuousExport =
      StopContinuousExportResponse
  request = postJSON discovery
  response =
    receiveJSON
      ( \s h x ->
          StopContinuousExportResponse'
            <$> (x .?> "startTime")
            <*> (x .?> "stopTime")
            <*> (pure (fromEnum s))
      )

instance Hashable StopContinuousExport

instance NFData StopContinuousExport

instance ToHeaders StopContinuousExport where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AWSPoseidonService_V2015_11_01.StopContinuousExport" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON StopContinuousExport where
  toJSON StopContinuousExport' {..} =
    object
      (catMaybes [Just ("exportId" .= _sceExportId)])

instance ToPath StopContinuousExport where
  toPath = const "/"

instance ToQuery StopContinuousExport where
  toQuery = const mempty

-- | /See:/ 'stopContinuousExportResponse' smart constructor.
data StopContinuousExportResponse = StopContinuousExportResponse'
  { _scerrsStartTime ::
      !( Maybe
           POSIX
       ),
    _scerrsStopTime ::
      !( Maybe
           POSIX
       ),
    _scerrsResponseStatus ::
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

-- | Creates a value of 'StopContinuousExportResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'scerrsStartTime' - Timestamp that represents when this continuous export started collecting data.
--
-- * 'scerrsStopTime' - Timestamp that represents when this continuous export was stopped.
--
-- * 'scerrsResponseStatus' - -- | The response status code.
stopContinuousExportResponse ::
  -- | 'scerrsResponseStatus'
  Int ->
  StopContinuousExportResponse
stopContinuousExportResponse pResponseStatus_ =
  StopContinuousExportResponse'
    { _scerrsStartTime =
        Nothing,
      _scerrsStopTime = Nothing,
      _scerrsResponseStatus = pResponseStatus_
    }

-- | Timestamp that represents when this continuous export started collecting data.
scerrsStartTime :: Lens' StopContinuousExportResponse (Maybe UTCTime)
scerrsStartTime = lens _scerrsStartTime (\s a -> s {_scerrsStartTime = a}) . mapping _Time

-- | Timestamp that represents when this continuous export was stopped.
scerrsStopTime :: Lens' StopContinuousExportResponse (Maybe UTCTime)
scerrsStopTime = lens _scerrsStopTime (\s a -> s {_scerrsStopTime = a}) . mapping _Time

-- | -- | The response status code.
scerrsResponseStatus :: Lens' StopContinuousExportResponse Int
scerrsResponseStatus = lens _scerrsResponseStatus (\s a -> s {_scerrsResponseStatus = a})

instance NFData StopContinuousExportResponse
