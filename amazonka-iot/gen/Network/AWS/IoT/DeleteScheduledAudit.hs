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
-- Module      : Network.AWS.IoT.DeleteScheduledAudit
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a scheduled audit.
module Network.AWS.IoT.DeleteScheduledAudit
  ( -- * Creating a Request
    deleteScheduledAudit,
    DeleteScheduledAudit,

    -- * Request Lenses
    dScheduledAuditName,

    -- * Destructuring the Response
    deleteScheduledAuditResponse,
    DeleteScheduledAuditResponse,

    -- * Response Lenses
    dsarrsResponseStatus,
  )
where

import Network.AWS.IoT.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'deleteScheduledAudit' smart constructor.
newtype DeleteScheduledAudit = DeleteScheduledAudit'
  { _dScheduledAuditName ::
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

-- | Creates a value of 'DeleteScheduledAudit' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dScheduledAuditName' - The name of the scheduled audit you want to delete.
deleteScheduledAudit ::
  -- | 'dScheduledAuditName'
  Text ->
  DeleteScheduledAudit
deleteScheduledAudit pScheduledAuditName_ =
  DeleteScheduledAudit'
    { _dScheduledAuditName =
        pScheduledAuditName_
    }

-- | The name of the scheduled audit you want to delete.
dScheduledAuditName :: Lens' DeleteScheduledAudit Text
dScheduledAuditName = lens _dScheduledAuditName (\s a -> s {_dScheduledAuditName = a})

instance AWSRequest DeleteScheduledAudit where
  type
    Rs DeleteScheduledAudit =
      DeleteScheduledAuditResponse
  request = delete ioT
  response =
    receiveEmpty
      ( \s h x ->
          DeleteScheduledAuditResponse'
            <$> (pure (fromEnum s))
      )

instance Hashable DeleteScheduledAudit

instance NFData DeleteScheduledAudit

instance ToHeaders DeleteScheduledAudit where
  toHeaders = const mempty

instance ToPath DeleteScheduledAudit where
  toPath DeleteScheduledAudit' {..} =
    mconcat
      [ "/audit/scheduledaudits/",
        toBS _dScheduledAuditName
      ]

instance ToQuery DeleteScheduledAudit where
  toQuery = const mempty

-- | /See:/ 'deleteScheduledAuditResponse' smart constructor.
newtype DeleteScheduledAuditResponse = DeleteScheduledAuditResponse'
  { _dsarrsResponseStatus ::
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

-- | Creates a value of 'DeleteScheduledAuditResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dsarrsResponseStatus' - -- | The response status code.
deleteScheduledAuditResponse ::
  -- | 'dsarrsResponseStatus'
  Int ->
  DeleteScheduledAuditResponse
deleteScheduledAuditResponse pResponseStatus_ =
  DeleteScheduledAuditResponse'
    { _dsarrsResponseStatus =
        pResponseStatus_
    }

-- | -- | The response status code.
dsarrsResponseStatus :: Lens' DeleteScheduledAuditResponse Int
dsarrsResponseStatus = lens _dsarrsResponseStatus (\s a -> s {_dsarrsResponseStatus = a})

instance NFData DeleteScheduledAuditResponse
