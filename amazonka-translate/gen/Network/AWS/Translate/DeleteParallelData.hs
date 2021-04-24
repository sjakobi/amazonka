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
-- Module      : Network.AWS.Translate.DeleteParallelData
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a parallel data resource in Amazon Translate.
module Network.AWS.Translate.DeleteParallelData
  ( -- * Creating a Request
    deleteParallelData,
    DeleteParallelData,

    -- * Request Lenses
    dpdName,

    -- * Destructuring the Response
    deleteParallelDataResponse,
    DeleteParallelDataResponse,

    -- * Response Lenses
    dpdrrsStatus,
    dpdrrsName,
    dpdrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.Translate.Types

-- | /See:/ 'deleteParallelData' smart constructor.
newtype DeleteParallelData = DeleteParallelData'
  { _dpdName ::
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

-- | Creates a value of 'DeleteParallelData' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dpdName' - The name of the parallel data resource that is being deleted.
deleteParallelData ::
  -- | 'dpdName'
  Text ->
  DeleteParallelData
deleteParallelData pName_ =
  DeleteParallelData' {_dpdName = pName_}

-- | The name of the parallel data resource that is being deleted.
dpdName :: Lens' DeleteParallelData Text
dpdName = lens _dpdName (\s a -> s {_dpdName = a})

instance AWSRequest DeleteParallelData where
  type
    Rs DeleteParallelData =
      DeleteParallelDataResponse
  request = postJSON translate
  response =
    receiveJSON
      ( \s h x ->
          DeleteParallelDataResponse'
            <$> (x .?> "Status")
            <*> (x .?> "Name")
            <*> (pure (fromEnum s))
      )

instance Hashable DeleteParallelData

instance NFData DeleteParallelData

instance ToHeaders DeleteParallelData where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AWSShineFrontendService_20170701.DeleteParallelData" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DeleteParallelData where
  toJSON DeleteParallelData' {..} =
    object (catMaybes [Just ("Name" .= _dpdName)])

instance ToPath DeleteParallelData where
  toPath = const "/"

instance ToQuery DeleteParallelData where
  toQuery = const mempty

-- | /See:/ 'deleteParallelDataResponse' smart constructor.
data DeleteParallelDataResponse = DeleteParallelDataResponse'
  { _dpdrrsStatus ::
      !( Maybe
           ParallelDataStatus
       ),
    _dpdrrsName ::
      !(Maybe Text),
    _dpdrrsResponseStatus ::
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

-- | Creates a value of 'DeleteParallelDataResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dpdrrsStatus' - The status of the parallel data deletion.
--
-- * 'dpdrrsName' - The name of the parallel data resource that is being deleted.
--
-- * 'dpdrrsResponseStatus' - -- | The response status code.
deleteParallelDataResponse ::
  -- | 'dpdrrsResponseStatus'
  Int ->
  DeleteParallelDataResponse
deleteParallelDataResponse pResponseStatus_ =
  DeleteParallelDataResponse'
    { _dpdrrsStatus =
        Nothing,
      _dpdrrsName = Nothing,
      _dpdrrsResponseStatus = pResponseStatus_
    }

-- | The status of the parallel data deletion.
dpdrrsStatus :: Lens' DeleteParallelDataResponse (Maybe ParallelDataStatus)
dpdrrsStatus = lens _dpdrrsStatus (\s a -> s {_dpdrrsStatus = a})

-- | The name of the parallel data resource that is being deleted.
dpdrrsName :: Lens' DeleteParallelDataResponse (Maybe Text)
dpdrrsName = lens _dpdrrsName (\s a -> s {_dpdrrsName = a})

-- | -- | The response status code.
dpdrrsResponseStatus :: Lens' DeleteParallelDataResponse Int
dpdrrsResponseStatus = lens _dpdrrsResponseStatus (\s a -> s {_dpdrrsResponseStatus = a})

instance NFData DeleteParallelDataResponse
