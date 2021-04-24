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
-- Module      : Network.AWS.Glue.DeleteTrigger
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a specified trigger. If the trigger is not found, no exception is thrown.
module Network.AWS.Glue.DeleteTrigger
  ( -- * Creating a Request
    deleteTrigger,
    DeleteTrigger,

    -- * Request Lenses
    dtName,

    -- * Destructuring the Response
    deleteTriggerResponse,
    DeleteTriggerResponse,

    -- * Response Lenses
    dtrrsName,
    dtrrsResponseStatus,
  )
where

import Network.AWS.Glue.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'deleteTrigger' smart constructor.
newtype DeleteTrigger = DeleteTrigger'
  { _dtName ::
      Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DeleteTrigger' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dtName' - The name of the trigger to delete.
deleteTrigger ::
  -- | 'dtName'
  Text ->
  DeleteTrigger
deleteTrigger pName_ =
  DeleteTrigger' {_dtName = pName_}

-- | The name of the trigger to delete.
dtName :: Lens' DeleteTrigger Text
dtName = lens _dtName (\s a -> s {_dtName = a})

instance AWSRequest DeleteTrigger where
  type Rs DeleteTrigger = DeleteTriggerResponse
  request = postJSON glue
  response =
    receiveJSON
      ( \s h x ->
          DeleteTriggerResponse'
            <$> (x .?> "Name") <*> (pure (fromEnum s))
      )

instance Hashable DeleteTrigger

instance NFData DeleteTrigger

instance ToHeaders DeleteTrigger where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("AWSGlue.DeleteTrigger" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DeleteTrigger where
  toJSON DeleteTrigger' {..} =
    object (catMaybes [Just ("Name" .= _dtName)])

instance ToPath DeleteTrigger where
  toPath = const "/"

instance ToQuery DeleteTrigger where
  toQuery = const mempty

-- | /See:/ 'deleteTriggerResponse' smart constructor.
data DeleteTriggerResponse = DeleteTriggerResponse'
  { _dtrrsName ::
      !(Maybe Text),
    _dtrrsResponseStatus ::
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

-- | Creates a value of 'DeleteTriggerResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dtrrsName' - The name of the trigger that was deleted.
--
-- * 'dtrrsResponseStatus' - -- | The response status code.
deleteTriggerResponse ::
  -- | 'dtrrsResponseStatus'
  Int ->
  DeleteTriggerResponse
deleteTriggerResponse pResponseStatus_ =
  DeleteTriggerResponse'
    { _dtrrsName = Nothing,
      _dtrrsResponseStatus = pResponseStatus_
    }

-- | The name of the trigger that was deleted.
dtrrsName :: Lens' DeleteTriggerResponse (Maybe Text)
dtrrsName = lens _dtrrsName (\s a -> s {_dtrrsName = a})

-- | -- | The response status code.
dtrrsResponseStatus :: Lens' DeleteTriggerResponse Int
dtrrsResponseStatus = lens _dtrrsResponseStatus (\s a -> s {_dtrrsResponseStatus = a})

instance NFData DeleteTriggerResponse
