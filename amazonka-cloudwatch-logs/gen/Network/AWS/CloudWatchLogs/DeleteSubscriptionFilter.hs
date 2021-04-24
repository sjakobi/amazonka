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
-- Module      : Network.AWS.CloudWatchLogs.DeleteSubscriptionFilter
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the specified subscription filter.
module Network.AWS.CloudWatchLogs.DeleteSubscriptionFilter
  ( -- * Creating a Request
    deleteSubscriptionFilter,
    DeleteSubscriptionFilter,

    -- * Request Lenses
    dsfsLogGroupName,
    dsfsFilterName,

    -- * Destructuring the Response
    deleteSubscriptionFilterResponse,
    DeleteSubscriptionFilterResponse,
  )
where

import Network.AWS.CloudWatchLogs.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'deleteSubscriptionFilter' smart constructor.
data DeleteSubscriptionFilter = DeleteSubscriptionFilter'
  { _dsfsLogGroupName ::
      !Text,
    _dsfsFilterName ::
      !Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DeleteSubscriptionFilter' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dsfsLogGroupName' - The name of the log group.
--
-- * 'dsfsFilterName' - The name of the subscription filter.
deleteSubscriptionFilter ::
  -- | 'dsfsLogGroupName'
  Text ->
  -- | 'dsfsFilterName'
  Text ->
  DeleteSubscriptionFilter
deleteSubscriptionFilter pLogGroupName_ pFilterName_ =
  DeleteSubscriptionFilter'
    { _dsfsLogGroupName =
        pLogGroupName_,
      _dsfsFilterName = pFilterName_
    }

-- | The name of the log group.
dsfsLogGroupName :: Lens' DeleteSubscriptionFilter Text
dsfsLogGroupName = lens _dsfsLogGroupName (\s a -> s {_dsfsLogGroupName = a})

-- | The name of the subscription filter.
dsfsFilterName :: Lens' DeleteSubscriptionFilter Text
dsfsFilterName = lens _dsfsFilterName (\s a -> s {_dsfsFilterName = a})

instance AWSRequest DeleteSubscriptionFilter where
  type
    Rs DeleteSubscriptionFilter =
      DeleteSubscriptionFilterResponse
  request = postJSON cloudWatchLogs
  response =
    receiveNull DeleteSubscriptionFilterResponse'

instance Hashable DeleteSubscriptionFilter

instance NFData DeleteSubscriptionFilter

instance ToHeaders DeleteSubscriptionFilter where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "Logs_20140328.DeleteSubscriptionFilter" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DeleteSubscriptionFilter where
  toJSON DeleteSubscriptionFilter' {..} =
    object
      ( catMaybes
          [ Just ("logGroupName" .= _dsfsLogGroupName),
            Just ("filterName" .= _dsfsFilterName)
          ]
      )

instance ToPath DeleteSubscriptionFilter where
  toPath = const "/"

instance ToQuery DeleteSubscriptionFilter where
  toQuery = const mempty

-- | /See:/ 'deleteSubscriptionFilterResponse' smart constructor.
data DeleteSubscriptionFilterResponse = DeleteSubscriptionFilterResponse'
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DeleteSubscriptionFilterResponse' with the minimum fields required to make a request.
deleteSubscriptionFilterResponse ::
  DeleteSubscriptionFilterResponse
deleteSubscriptionFilterResponse =
  DeleteSubscriptionFilterResponse'

instance NFData DeleteSubscriptionFilterResponse
