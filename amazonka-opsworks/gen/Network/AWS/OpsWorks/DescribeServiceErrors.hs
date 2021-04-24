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
-- Module      : Network.AWS.OpsWorks.DescribeServiceErrors
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes AWS OpsWorks Stacks service errors.
--
--
-- __Required Permissions__ : To use this action, an IAM user must have a Show, Deploy, or Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information about user permissions, see <https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html Managing User Permissions> .
--
-- This call accepts only one resource-identifying parameter.
module Network.AWS.OpsWorks.DescribeServiceErrors
  ( -- * Creating a Request
    describeServiceErrors,
    DescribeServiceErrors,

    -- * Request Lenses
    dseInstanceId,
    dseStackId,
    dseServiceErrorIds,

    -- * Destructuring the Response
    describeServiceErrorsResponse,
    DescribeServiceErrorsResponse,

    -- * Response Lenses
    dserrsServiceErrors,
    dserrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.OpsWorks.Types
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describeServiceErrors' smart constructor.
data DescribeServiceErrors = DescribeServiceErrors'
  { _dseInstanceId ::
      !(Maybe Text),
    _dseStackId ::
      !(Maybe Text),
    _dseServiceErrorIds ::
      !(Maybe [Text])
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DescribeServiceErrors' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dseInstanceId' - The instance ID. If you use this parameter, @DescribeServiceErrors@ returns descriptions of the errors associated with the specified instance.
--
-- * 'dseStackId' - The stack ID. If you use this parameter, @DescribeServiceErrors@ returns descriptions of the errors associated with the specified stack.
--
-- * 'dseServiceErrorIds' - An array of service error IDs. If you use this parameter, @DescribeServiceErrors@ returns descriptions of the specified errors. Otherwise, it returns a description of every error.
describeServiceErrors ::
  DescribeServiceErrors
describeServiceErrors =
  DescribeServiceErrors'
    { _dseInstanceId = Nothing,
      _dseStackId = Nothing,
      _dseServiceErrorIds = Nothing
    }

-- | The instance ID. If you use this parameter, @DescribeServiceErrors@ returns descriptions of the errors associated with the specified instance.
dseInstanceId :: Lens' DescribeServiceErrors (Maybe Text)
dseInstanceId = lens _dseInstanceId (\s a -> s {_dseInstanceId = a})

-- | The stack ID. If you use this parameter, @DescribeServiceErrors@ returns descriptions of the errors associated with the specified stack.
dseStackId :: Lens' DescribeServiceErrors (Maybe Text)
dseStackId = lens _dseStackId (\s a -> s {_dseStackId = a})

-- | An array of service error IDs. If you use this parameter, @DescribeServiceErrors@ returns descriptions of the specified errors. Otherwise, it returns a description of every error.
dseServiceErrorIds :: Lens' DescribeServiceErrors [Text]
dseServiceErrorIds = lens _dseServiceErrorIds (\s a -> s {_dseServiceErrorIds = a}) . _Default . _Coerce

instance AWSRequest DescribeServiceErrors where
  type
    Rs DescribeServiceErrors =
      DescribeServiceErrorsResponse
  request = postJSON opsWorks
  response =
    receiveJSON
      ( \s h x ->
          DescribeServiceErrorsResponse'
            <$> (x .?> "ServiceErrors" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeServiceErrors

instance NFData DescribeServiceErrors

instance ToHeaders DescribeServiceErrors where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "OpsWorks_20130218.DescribeServiceErrors" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DescribeServiceErrors where
  toJSON DescribeServiceErrors' {..} =
    object
      ( catMaybes
          [ ("InstanceId" .=) <$> _dseInstanceId,
            ("StackId" .=) <$> _dseStackId,
            ("ServiceErrorIds" .=) <$> _dseServiceErrorIds
          ]
      )

instance ToPath DescribeServiceErrors where
  toPath = const "/"

instance ToQuery DescribeServiceErrors where
  toQuery = const mempty

-- | Contains the response to a @DescribeServiceErrors@ request.
--
--
--
-- /See:/ 'describeServiceErrorsResponse' smart constructor.
data DescribeServiceErrorsResponse = DescribeServiceErrorsResponse'
  { _dserrsServiceErrors ::
      !( Maybe
           [ServiceError']
       ),
    _dserrsResponseStatus ::
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

-- | Creates a value of 'DescribeServiceErrorsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dserrsServiceErrors' - An array of @ServiceError@ objects that describe the specified service errors.
--
-- * 'dserrsResponseStatus' - -- | The response status code.
describeServiceErrorsResponse ::
  -- | 'dserrsResponseStatus'
  Int ->
  DescribeServiceErrorsResponse
describeServiceErrorsResponse pResponseStatus_ =
  DescribeServiceErrorsResponse'
    { _dserrsServiceErrors =
        Nothing,
      _dserrsResponseStatus = pResponseStatus_
    }

-- | An array of @ServiceError@ objects that describe the specified service errors.
dserrsServiceErrors :: Lens' DescribeServiceErrorsResponse [ServiceError']
dserrsServiceErrors = lens _dserrsServiceErrors (\s a -> s {_dserrsServiceErrors = a}) . _Default . _Coerce

-- | -- | The response status code.
dserrsResponseStatus :: Lens' DescribeServiceErrorsResponse Int
dserrsResponseStatus = lens _dserrsResponseStatus (\s a -> s {_dserrsResponseStatus = a})

instance NFData DescribeServiceErrorsResponse
