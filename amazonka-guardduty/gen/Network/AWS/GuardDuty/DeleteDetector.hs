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
-- Module      : Network.AWS.GuardDuty.DeleteDetector
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes an Amazon GuardDuty detector that is specified by the detector ID.
module Network.AWS.GuardDuty.DeleteDetector
  ( -- * Creating a Request
    deleteDetector,
    DeleteDetector,

    -- * Request Lenses
    ddDetectorId,

    -- * Destructuring the Response
    deleteDetectorResponse,
    DeleteDetectorResponse,

    -- * Response Lenses
    ddrrsResponseStatus,
  )
where

import Network.AWS.GuardDuty.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'deleteDetector' smart constructor.
newtype DeleteDetector = DeleteDetector'
  { _ddDetectorId ::
      Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DeleteDetector' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ddDetectorId' - The unique ID of the detector that you want to delete.
deleteDetector ::
  -- | 'ddDetectorId'
  Text ->
  DeleteDetector
deleteDetector pDetectorId_ =
  DeleteDetector' {_ddDetectorId = pDetectorId_}

-- | The unique ID of the detector that you want to delete.
ddDetectorId :: Lens' DeleteDetector Text
ddDetectorId = lens _ddDetectorId (\s a -> s {_ddDetectorId = a})

instance AWSRequest DeleteDetector where
  type Rs DeleteDetector = DeleteDetectorResponse
  request = delete guardDuty
  response =
    receiveEmpty
      ( \s h x ->
          DeleteDetectorResponse' <$> (pure (fromEnum s))
      )

instance Hashable DeleteDetector

instance NFData DeleteDetector

instance ToHeaders DeleteDetector where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToPath DeleteDetector where
  toPath DeleteDetector' {..} =
    mconcat ["/detector/", toBS _ddDetectorId]

instance ToQuery DeleteDetector where
  toQuery = const mempty

-- | /See:/ 'deleteDetectorResponse' smart constructor.
newtype DeleteDetectorResponse = DeleteDetectorResponse'
  { _ddrrsResponseStatus ::
      Int
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DeleteDetectorResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ddrrsResponseStatus' - -- | The response status code.
deleteDetectorResponse ::
  -- | 'ddrrsResponseStatus'
  Int ->
  DeleteDetectorResponse
deleteDetectorResponse pResponseStatus_ =
  DeleteDetectorResponse'
    { _ddrrsResponseStatus =
        pResponseStatus_
    }

-- | -- | The response status code.
ddrrsResponseStatus :: Lens' DeleteDetectorResponse Int
ddrrsResponseStatus = lens _ddrrsResponseStatus (\s a -> s {_ddrrsResponseStatus = a})

instance NFData DeleteDetectorResponse
