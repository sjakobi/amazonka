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
-- Module      : Network.AWS.CloudFormation.DeleteStackSet
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a stack set. Before you can delete a stack set, all of its member stack instances must be deleted. For more information about how to do this, see 'DeleteStackInstances' .
module Network.AWS.CloudFormation.DeleteStackSet
  ( -- * Creating a Request
    deleteStackSet,
    DeleteStackSet,

    -- * Request Lenses
    dssCallAs,
    dssStackSetName,

    -- * Destructuring the Response
    deleteStackSetResponse,
    DeleteStackSetResponse,

    -- * Response Lenses
    dssrrsResponseStatus,
  )
where

import Network.AWS.CloudFormation.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'deleteStackSet' smart constructor.
data DeleteStackSet = DeleteStackSet'
  { _dssCallAs ::
      !(Maybe CallAs),
    _dssStackSetName :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DeleteStackSet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dssCallAs' - [Service-managed permissions] Specifies whether you are acting as an account administrator in the organization's management account or as a delegated administrator in a member account. By default, @SELF@ is specified. Use @SELF@ for stack sets with self-managed permissions.     * If you are signed in to the management account, specify @SELF@ .     * If you are signed in to a delegated administrator account, specify @DELEGATED_ADMIN@ . Your AWS account must be registered as a delegated administrator in the management account. For more information, see <https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-orgs-delegated-admin.html Register a delegated administrator> in the /AWS CloudFormation User Guide/ .
--
-- * 'dssStackSetName' - The name or unique ID of the stack set that you're deleting. You can obtain this value by running 'ListStackSets' .
deleteStackSet ::
  -- | 'dssStackSetName'
  Text ->
  DeleteStackSet
deleteStackSet pStackSetName_ =
  DeleteStackSet'
    { _dssCallAs = Nothing,
      _dssStackSetName = pStackSetName_
    }

-- | [Service-managed permissions] Specifies whether you are acting as an account administrator in the organization's management account or as a delegated administrator in a member account. By default, @SELF@ is specified. Use @SELF@ for stack sets with self-managed permissions.     * If you are signed in to the management account, specify @SELF@ .     * If you are signed in to a delegated administrator account, specify @DELEGATED_ADMIN@ . Your AWS account must be registered as a delegated administrator in the management account. For more information, see <https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-orgs-delegated-admin.html Register a delegated administrator> in the /AWS CloudFormation User Guide/ .
dssCallAs :: Lens' DeleteStackSet (Maybe CallAs)
dssCallAs = lens _dssCallAs (\s a -> s {_dssCallAs = a})

-- | The name or unique ID of the stack set that you're deleting. You can obtain this value by running 'ListStackSets' .
dssStackSetName :: Lens' DeleteStackSet Text
dssStackSetName = lens _dssStackSetName (\s a -> s {_dssStackSetName = a})

instance AWSRequest DeleteStackSet where
  type Rs DeleteStackSet = DeleteStackSetResponse
  request = postQuery cloudFormation
  response =
    receiveXMLWrapper
      "DeleteStackSetResult"
      ( \s h x ->
          DeleteStackSetResponse' <$> (pure (fromEnum s))
      )

instance Hashable DeleteStackSet

instance NFData DeleteStackSet

instance ToHeaders DeleteStackSet where
  toHeaders = const mempty

instance ToPath DeleteStackSet where
  toPath = const "/"

instance ToQuery DeleteStackSet where
  toQuery DeleteStackSet' {..} =
    mconcat
      [ "Action" =: ("DeleteStackSet" :: ByteString),
        "Version" =: ("2010-05-15" :: ByteString),
        "CallAs" =: _dssCallAs,
        "StackSetName" =: _dssStackSetName
      ]

-- | /See:/ 'deleteStackSetResponse' smart constructor.
newtype DeleteStackSetResponse = DeleteStackSetResponse'
  { _dssrrsResponseStatus ::
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

-- | Creates a value of 'DeleteStackSetResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dssrrsResponseStatus' - -- | The response status code.
deleteStackSetResponse ::
  -- | 'dssrrsResponseStatus'
  Int ->
  DeleteStackSetResponse
deleteStackSetResponse pResponseStatus_ =
  DeleteStackSetResponse'
    { _dssrrsResponseStatus =
        pResponseStatus_
    }

-- | -- | The response status code.
dssrrsResponseStatus :: Lens' DeleteStackSetResponse Int
dssrrsResponseStatus = lens _dssrrsResponseStatus (\s a -> s {_dssrrsResponseStatus = a})

instance NFData DeleteStackSetResponse
