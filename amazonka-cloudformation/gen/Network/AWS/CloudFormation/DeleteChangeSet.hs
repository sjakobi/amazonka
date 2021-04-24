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
-- Module      : Network.AWS.CloudFormation.DeleteChangeSet
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the specified change set. Deleting change sets ensures that no one executes the wrong change set.
--
--
-- If the call successfully completes, AWS CloudFormation successfully deleted the change set.
--
-- If @IncludeNestedStacks@ specifies @True@ during the creation of the nested change set, then @DeleteChangeSet@ will delete all change sets that belong to the stacks hierarchy and will also delete all change sets for nested stacks with the status of @REVIEW_IN_PROGRESS@ .
module Network.AWS.CloudFormation.DeleteChangeSet
  ( -- * Creating a Request
    deleteChangeSet,
    DeleteChangeSet,

    -- * Request Lenses
    dcscStackName,
    dcscChangeSetName,

    -- * Destructuring the Response
    deleteChangeSetResponse,
    DeleteChangeSetResponse,

    -- * Response Lenses
    dcsrrsResponseStatus,
  )
where

import Network.AWS.CloudFormation.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | The input for the 'DeleteChangeSet' action.
--
--
--
-- /See:/ 'deleteChangeSet' smart constructor.
data DeleteChangeSet = DeleteChangeSet'
  { _dcscStackName ::
      !(Maybe Text),
    _dcscChangeSetName :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DeleteChangeSet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dcscStackName' - If you specified the name of a change set to delete, specify the stack name or ID (ARN) that is associated with it.
--
-- * 'dcscChangeSetName' - The name or Amazon Resource Name (ARN) of the change set that you want to delete.
deleteChangeSet ::
  -- | 'dcscChangeSetName'
  Text ->
  DeleteChangeSet
deleteChangeSet pChangeSetName_ =
  DeleteChangeSet'
    { _dcscStackName = Nothing,
      _dcscChangeSetName = pChangeSetName_
    }

-- | If you specified the name of a change set to delete, specify the stack name or ID (ARN) that is associated with it.
dcscStackName :: Lens' DeleteChangeSet (Maybe Text)
dcscStackName = lens _dcscStackName (\s a -> s {_dcscStackName = a})

-- | The name or Amazon Resource Name (ARN) of the change set that you want to delete.
dcscChangeSetName :: Lens' DeleteChangeSet Text
dcscChangeSetName = lens _dcscChangeSetName (\s a -> s {_dcscChangeSetName = a})

instance AWSRequest DeleteChangeSet where
  type Rs DeleteChangeSet = DeleteChangeSetResponse
  request = postQuery cloudFormation
  response =
    receiveXMLWrapper
      "DeleteChangeSetResult"
      ( \s h x ->
          DeleteChangeSetResponse' <$> (pure (fromEnum s))
      )

instance Hashable DeleteChangeSet

instance NFData DeleteChangeSet

instance ToHeaders DeleteChangeSet where
  toHeaders = const mempty

instance ToPath DeleteChangeSet where
  toPath = const "/"

instance ToQuery DeleteChangeSet where
  toQuery DeleteChangeSet' {..} =
    mconcat
      [ "Action" =: ("DeleteChangeSet" :: ByteString),
        "Version" =: ("2010-05-15" :: ByteString),
        "StackName" =: _dcscStackName,
        "ChangeSetName" =: _dcscChangeSetName
      ]

-- | The output for the 'DeleteChangeSet' action.
--
--
--
-- /See:/ 'deleteChangeSetResponse' smart constructor.
newtype DeleteChangeSetResponse = DeleteChangeSetResponse'
  { _dcsrrsResponseStatus ::
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

-- | Creates a value of 'DeleteChangeSetResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dcsrrsResponseStatus' - -- | The response status code.
deleteChangeSetResponse ::
  -- | 'dcsrrsResponseStatus'
  Int ->
  DeleteChangeSetResponse
deleteChangeSetResponse pResponseStatus_ =
  DeleteChangeSetResponse'
    { _dcsrrsResponseStatus =
        pResponseStatus_
    }

-- | -- | The response status code.
dcsrrsResponseStatus :: Lens' DeleteChangeSetResponse Int
dcsrrsResponseStatus = lens _dcsrrsResponseStatus (\s a -> s {_dcsrrsResponseStatus = a})

instance NFData DeleteChangeSetResponse
