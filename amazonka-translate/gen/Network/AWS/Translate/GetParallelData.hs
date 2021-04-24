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
-- Module      : Network.AWS.Translate.GetParallelData
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Provides information about a parallel data resource.
module Network.AWS.Translate.GetParallelData
  ( -- * Creating a Request
    getParallelData,
    GetParallelData,

    -- * Request Lenses
    gpdName,

    -- * Destructuring the Response
    getParallelDataResponse,
    GetParallelDataResponse,

    -- * Response Lenses
    gpdrrsAuxiliaryDataLocation,
    gpdrrsParallelDataProperties,
    gpdrrsLatestUpdateAttemptAuxiliaryDataLocation,
    gpdrrsDataLocation,
    gpdrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.Translate.Types

-- | /See:/ 'getParallelData' smart constructor.
newtype GetParallelData = GetParallelData'
  { _gpdName ::
      Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetParallelData' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gpdName' - The name of the parallel data resource that is being retrieved.
getParallelData ::
  -- | 'gpdName'
  Text ->
  GetParallelData
getParallelData pName_ =
  GetParallelData' {_gpdName = pName_}

-- | The name of the parallel data resource that is being retrieved.
gpdName :: Lens' GetParallelData Text
gpdName = lens _gpdName (\s a -> s {_gpdName = a})

instance AWSRequest GetParallelData where
  type Rs GetParallelData = GetParallelDataResponse
  request = postJSON translate
  response =
    receiveJSON
      ( \s h x ->
          GetParallelDataResponse'
            <$> (x .?> "AuxiliaryDataLocation")
            <*> (x .?> "ParallelDataProperties")
            <*> (x .?> "LatestUpdateAttemptAuxiliaryDataLocation")
            <*> (x .?> "DataLocation")
            <*> (pure (fromEnum s))
      )

instance Hashable GetParallelData

instance NFData GetParallelData

instance ToHeaders GetParallelData where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AWSShineFrontendService_20170701.GetParallelData" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON GetParallelData where
  toJSON GetParallelData' {..} =
    object (catMaybes [Just ("Name" .= _gpdName)])

instance ToPath GetParallelData where
  toPath = const "/"

instance ToQuery GetParallelData where
  toQuery = const mempty

-- | /See:/ 'getParallelDataResponse' smart constructor.
data GetParallelDataResponse = GetParallelDataResponse'
  { _gpdrrsAuxiliaryDataLocation ::
      !( Maybe
           ParallelDataDataLocation
       ),
    _gpdrrsParallelDataProperties ::
      !( Maybe
           ParallelDataProperties
       ),
    _gpdrrsLatestUpdateAttemptAuxiliaryDataLocation ::
      !( Maybe
           ParallelDataDataLocation
       ),
    _gpdrrsDataLocation ::
      !( Maybe
           ParallelDataDataLocation
       ),
    _gpdrrsResponseStatus ::
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

-- | Creates a value of 'GetParallelDataResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gpdrrsAuxiliaryDataLocation' - The Amazon S3 location of a file that provides any errors or warnings that were produced by your input file. This file was created when Amazon Translate attempted to create a parallel data resource. The location is returned as a presigned URL to that has a 30 minute expiration.
--
-- * 'gpdrrsParallelDataProperties' - The properties of the parallel data resource that is being retrieved.
--
-- * 'gpdrrsLatestUpdateAttemptAuxiliaryDataLocation' - The Amazon S3 location of a file that provides any errors or warnings that were produced by your input file. This file was created when Amazon Translate attempted to update a parallel data resource. The location is returned as a presigned URL to that has a 30 minute expiration.
--
-- * 'gpdrrsDataLocation' - The location of the most recent parallel data input file that was successfully imported into Amazon Translate. The location is returned as a presigned URL that has a 30 minute expiration.
--
-- * 'gpdrrsResponseStatus' - -- | The response status code.
getParallelDataResponse ::
  -- | 'gpdrrsResponseStatus'
  Int ->
  GetParallelDataResponse
getParallelDataResponse pResponseStatus_ =
  GetParallelDataResponse'
    { _gpdrrsAuxiliaryDataLocation =
        Nothing,
      _gpdrrsParallelDataProperties = Nothing,
      _gpdrrsLatestUpdateAttemptAuxiliaryDataLocation =
        Nothing,
      _gpdrrsDataLocation = Nothing,
      _gpdrrsResponseStatus = pResponseStatus_
    }

-- | The Amazon S3 location of a file that provides any errors or warnings that were produced by your input file. This file was created when Amazon Translate attempted to create a parallel data resource. The location is returned as a presigned URL to that has a 30 minute expiration.
gpdrrsAuxiliaryDataLocation :: Lens' GetParallelDataResponse (Maybe ParallelDataDataLocation)
gpdrrsAuxiliaryDataLocation = lens _gpdrrsAuxiliaryDataLocation (\s a -> s {_gpdrrsAuxiliaryDataLocation = a})

-- | The properties of the parallel data resource that is being retrieved.
gpdrrsParallelDataProperties :: Lens' GetParallelDataResponse (Maybe ParallelDataProperties)
gpdrrsParallelDataProperties = lens _gpdrrsParallelDataProperties (\s a -> s {_gpdrrsParallelDataProperties = a})

-- | The Amazon S3 location of a file that provides any errors or warnings that were produced by your input file. This file was created when Amazon Translate attempted to update a parallel data resource. The location is returned as a presigned URL to that has a 30 minute expiration.
gpdrrsLatestUpdateAttemptAuxiliaryDataLocation :: Lens' GetParallelDataResponse (Maybe ParallelDataDataLocation)
gpdrrsLatestUpdateAttemptAuxiliaryDataLocation = lens _gpdrrsLatestUpdateAttemptAuxiliaryDataLocation (\s a -> s {_gpdrrsLatestUpdateAttemptAuxiliaryDataLocation = a})

-- | The location of the most recent parallel data input file that was successfully imported into Amazon Translate. The location is returned as a presigned URL that has a 30 minute expiration.
gpdrrsDataLocation :: Lens' GetParallelDataResponse (Maybe ParallelDataDataLocation)
gpdrrsDataLocation = lens _gpdrrsDataLocation (\s a -> s {_gpdrrsDataLocation = a})

-- | -- | The response status code.
gpdrrsResponseStatus :: Lens' GetParallelDataResponse Int
gpdrrsResponseStatus = lens _gpdrrsResponseStatus (\s a -> s {_gpdrrsResponseStatus = a})

instance NFData GetParallelDataResponse
