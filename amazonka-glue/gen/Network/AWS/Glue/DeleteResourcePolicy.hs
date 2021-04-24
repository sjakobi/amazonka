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
-- Module      : Network.AWS.Glue.DeleteResourcePolicy
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a specified policy.
module Network.AWS.Glue.DeleteResourcePolicy
  ( -- * Creating a Request
    deleteResourcePolicy,
    DeleteResourcePolicy,

    -- * Request Lenses
    drpResourceARN,
    drpPolicyHashCondition,

    -- * Destructuring the Response
    deleteResourcePolicyResponse,
    DeleteResourcePolicyResponse,

    -- * Response Lenses
    drprrsResponseStatus,
  )
where

import Network.AWS.Glue.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'deleteResourcePolicy' smart constructor.
data DeleteResourcePolicy = DeleteResourcePolicy'
  { _drpResourceARN ::
      !(Maybe Text),
    _drpPolicyHashCondition ::
      !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DeleteResourcePolicy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'drpResourceARN' - The ARN of the AWS Glue resource for the resource policy to be deleted.
--
-- * 'drpPolicyHashCondition' - The hash value returned when this policy was set.
deleteResourcePolicy ::
  DeleteResourcePolicy
deleteResourcePolicy =
  DeleteResourcePolicy'
    { _drpResourceARN = Nothing,
      _drpPolicyHashCondition = Nothing
    }

-- | The ARN of the AWS Glue resource for the resource policy to be deleted.
drpResourceARN :: Lens' DeleteResourcePolicy (Maybe Text)
drpResourceARN = lens _drpResourceARN (\s a -> s {_drpResourceARN = a})

-- | The hash value returned when this policy was set.
drpPolicyHashCondition :: Lens' DeleteResourcePolicy (Maybe Text)
drpPolicyHashCondition = lens _drpPolicyHashCondition (\s a -> s {_drpPolicyHashCondition = a})

instance AWSRequest DeleteResourcePolicy where
  type
    Rs DeleteResourcePolicy =
      DeleteResourcePolicyResponse
  request = postJSON glue
  response =
    receiveEmpty
      ( \s h x ->
          DeleteResourcePolicyResponse'
            <$> (pure (fromEnum s))
      )

instance Hashable DeleteResourcePolicy

instance NFData DeleteResourcePolicy

instance ToHeaders DeleteResourcePolicy where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("AWSGlue.DeleteResourcePolicy" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DeleteResourcePolicy where
  toJSON DeleteResourcePolicy' {..} =
    object
      ( catMaybes
          [ ("ResourceArn" .=) <$> _drpResourceARN,
            ("PolicyHashCondition" .=)
              <$> _drpPolicyHashCondition
          ]
      )

instance ToPath DeleteResourcePolicy where
  toPath = const "/"

instance ToQuery DeleteResourcePolicy where
  toQuery = const mempty

-- | /See:/ 'deleteResourcePolicyResponse' smart constructor.
newtype DeleteResourcePolicyResponse = DeleteResourcePolicyResponse'
  { _drprrsResponseStatus ::
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

-- | Creates a value of 'DeleteResourcePolicyResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'drprrsResponseStatus' - -- | The response status code.
deleteResourcePolicyResponse ::
  -- | 'drprrsResponseStatus'
  Int ->
  DeleteResourcePolicyResponse
deleteResourcePolicyResponse pResponseStatus_ =
  DeleteResourcePolicyResponse'
    { _drprrsResponseStatus =
        pResponseStatus_
    }

-- | -- | The response status code.
drprrsResponseStatus :: Lens' DeleteResourcePolicyResponse Int
drprrsResponseStatus = lens _drprrsResponseStatus (\s a -> s {_drprrsResponseStatus = a})

instance NFData DeleteResourcePolicyResponse
