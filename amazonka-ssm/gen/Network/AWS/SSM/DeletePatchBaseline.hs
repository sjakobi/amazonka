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
-- Module      : Network.AWS.SSM.DeletePatchBaseline
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a patch baseline.
module Network.AWS.SSM.DeletePatchBaseline
  ( -- * Creating a Request
    deletePatchBaseline,
    DeletePatchBaseline,

    -- * Request Lenses
    dpbBaselineId,

    -- * Destructuring the Response
    deletePatchBaselineResponse,
    DeletePatchBaselineResponse,

    -- * Response Lenses
    dpbrrsBaselineId,
    dpbrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SSM.Types

-- | /See:/ 'deletePatchBaseline' smart constructor.
newtype DeletePatchBaseline = DeletePatchBaseline'
  { _dpbBaselineId ::
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

-- | Creates a value of 'DeletePatchBaseline' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dpbBaselineId' - The ID of the patch baseline to delete.
deletePatchBaseline ::
  -- | 'dpbBaselineId'
  Text ->
  DeletePatchBaseline
deletePatchBaseline pBaselineId_ =
  DeletePatchBaseline' {_dpbBaselineId = pBaselineId_}

-- | The ID of the patch baseline to delete.
dpbBaselineId :: Lens' DeletePatchBaseline Text
dpbBaselineId = lens _dpbBaselineId (\s a -> s {_dpbBaselineId = a})

instance AWSRequest DeletePatchBaseline where
  type
    Rs DeletePatchBaseline =
      DeletePatchBaselineResponse
  request = postJSON ssm
  response =
    receiveJSON
      ( \s h x ->
          DeletePatchBaselineResponse'
            <$> (x .?> "BaselineId") <*> (pure (fromEnum s))
      )

instance Hashable DeletePatchBaseline

instance NFData DeletePatchBaseline

instance ToHeaders DeletePatchBaseline where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("AmazonSSM.DeletePatchBaseline" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DeletePatchBaseline where
  toJSON DeletePatchBaseline' {..} =
    object
      (catMaybes [Just ("BaselineId" .= _dpbBaselineId)])

instance ToPath DeletePatchBaseline where
  toPath = const "/"

instance ToQuery DeletePatchBaseline where
  toQuery = const mempty

-- | /See:/ 'deletePatchBaselineResponse' smart constructor.
data DeletePatchBaselineResponse = DeletePatchBaselineResponse'
  { _dpbrrsBaselineId ::
      !(Maybe Text),
    _dpbrrsResponseStatus ::
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

-- | Creates a value of 'DeletePatchBaselineResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dpbrrsBaselineId' - The ID of the deleted patch baseline.
--
-- * 'dpbrrsResponseStatus' - -- | The response status code.
deletePatchBaselineResponse ::
  -- | 'dpbrrsResponseStatus'
  Int ->
  DeletePatchBaselineResponse
deletePatchBaselineResponse pResponseStatus_ =
  DeletePatchBaselineResponse'
    { _dpbrrsBaselineId =
        Nothing,
      _dpbrrsResponseStatus = pResponseStatus_
    }

-- | The ID of the deleted patch baseline.
dpbrrsBaselineId :: Lens' DeletePatchBaselineResponse (Maybe Text)
dpbrrsBaselineId = lens _dpbrrsBaselineId (\s a -> s {_dpbrrsBaselineId = a})

-- | -- | The response status code.
dpbrrsResponseStatus :: Lens' DeletePatchBaselineResponse Int
dpbrrsResponseStatus = lens _dpbrrsResponseStatus (\s a -> s {_dpbrrsResponseStatus = a})

instance NFData DeletePatchBaselineResponse
