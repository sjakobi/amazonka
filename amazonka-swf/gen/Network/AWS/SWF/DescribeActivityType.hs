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
-- Module      : Network.AWS.SWF.DescribeActivityType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns information about the specified activity type. This includes configuration settings provided when the type was registered and other general information about the type.
--
--
-- __Access Control__
--
-- You can use IAM policies to control this action's access to Amazon SWF resources as follows:
--
--     * Use a @Resource@ element with the domain name to limit the action to only specified domains.
--
--     * Use an @Action@ element to allow or deny permission to call this action.
--
--     * Constrain the following parameters by using a @Condition@ element with the appropriate keys.
--
--     * @activityType.name@ : String constraint. The key is @swf:activityType.name@ .
--
--     * @activityType.version@ : String constraint. The key is @swf:activityType.version@ .
--
--
--
--
--
-- If the caller doesn't have sufficient permissions to invoke the action, or the parameter values fall outside the specified constraints, the action fails. The associated event attribute's @cause@ parameter is set to @OPERATION_NOT_PERMITTED@ . For details and example IAM policies, see <https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html Using IAM to Manage Access to Amazon SWF Workflows> in the /Amazon SWF Developer Guide/ .
module Network.AWS.SWF.DescribeActivityType
  ( -- * Creating a Request
    describeActivityType,
    DescribeActivityType,

    -- * Request Lenses
    desDomain,
    desActivityType,

    -- * Destructuring the Response
    describeActivityTypeResponse,
    DescribeActivityTypeResponse,

    -- * Response Lenses
    datrrsResponseStatus,
    datrrsTypeInfo,
    datrrsConfiguration,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SWF.Types

-- | /See:/ 'describeActivityType' smart constructor.
data DescribeActivityType = DescribeActivityType'
  { _desDomain ::
      !Text,
    _desActivityType ::
      !ActivityType
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DescribeActivityType' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'desDomain' - The name of the domain in which the activity type is registered.
--
-- * 'desActivityType' - The activity type to get information about. Activity types are identified by the @name@ and @version@ that were supplied when the activity was registered.
describeActivityType ::
  -- | 'desDomain'
  Text ->
  -- | 'desActivityType'
  ActivityType ->
  DescribeActivityType
describeActivityType pDomain_ pActivityType_ =
  DescribeActivityType'
    { _desDomain = pDomain_,
      _desActivityType = pActivityType_
    }

-- | The name of the domain in which the activity type is registered.
desDomain :: Lens' DescribeActivityType Text
desDomain = lens _desDomain (\s a -> s {_desDomain = a})

-- | The activity type to get information about. Activity types are identified by the @name@ and @version@ that were supplied when the activity was registered.
desActivityType :: Lens' DescribeActivityType ActivityType
desActivityType = lens _desActivityType (\s a -> s {_desActivityType = a})

instance AWSRequest DescribeActivityType where
  type
    Rs DescribeActivityType =
      DescribeActivityTypeResponse
  request = postJSON swf
  response =
    receiveJSON
      ( \s h x ->
          DescribeActivityTypeResponse'
            <$> (pure (fromEnum s))
            <*> (x .:> "typeInfo")
            <*> (x .:> "configuration")
      )

instance Hashable DescribeActivityType

instance NFData DescribeActivityType

instance ToHeaders DescribeActivityType where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "SimpleWorkflowService.DescribeActivityType" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.0" :: ByteString)
          ]
      )

instance ToJSON DescribeActivityType where
  toJSON DescribeActivityType' {..} =
    object
      ( catMaybes
          [ Just ("domain" .= _desDomain),
            Just ("activityType" .= _desActivityType)
          ]
      )

instance ToPath DescribeActivityType where
  toPath = const "/"

instance ToQuery DescribeActivityType where
  toQuery = const mempty

-- | Detailed information about an activity type.
--
--
--
-- /See:/ 'describeActivityTypeResponse' smart constructor.
data DescribeActivityTypeResponse = DescribeActivityTypeResponse'
  { _datrrsResponseStatus ::
      !Int,
    _datrrsTypeInfo ::
      !ActivityTypeInfo,
    _datrrsConfiguration ::
      !ActivityTypeConfiguration
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DescribeActivityTypeResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'datrrsResponseStatus' - -- | The response status code.
--
-- * 'datrrsTypeInfo' - General information about the activity type. The status of activity type (returned in the ActivityTypeInfo structure) can be one of the following.     * @REGISTERED@ – The type is registered and available. Workers supporting this type should be running.      * @DEPRECATED@ – The type was deprecated using 'DeprecateActivityType' , but is still in use. You should keep workers supporting this type running. You cannot create new tasks of this type.
--
-- * 'datrrsConfiguration' - The configuration settings registered with the activity type.
describeActivityTypeResponse ::
  -- | 'datrrsResponseStatus'
  Int ->
  -- | 'datrrsTypeInfo'
  ActivityTypeInfo ->
  -- | 'datrrsConfiguration'
  ActivityTypeConfiguration ->
  DescribeActivityTypeResponse
describeActivityTypeResponse
  pResponseStatus_
  pTypeInfo_
  pConfiguration_ =
    DescribeActivityTypeResponse'
      { _datrrsResponseStatus =
          pResponseStatus_,
        _datrrsTypeInfo = pTypeInfo_,
        _datrrsConfiguration = pConfiguration_
      }

-- | -- | The response status code.
datrrsResponseStatus :: Lens' DescribeActivityTypeResponse Int
datrrsResponseStatus = lens _datrrsResponseStatus (\s a -> s {_datrrsResponseStatus = a})

-- | General information about the activity type. The status of activity type (returned in the ActivityTypeInfo structure) can be one of the following.     * @REGISTERED@ – The type is registered and available. Workers supporting this type should be running.      * @DEPRECATED@ – The type was deprecated using 'DeprecateActivityType' , but is still in use. You should keep workers supporting this type running. You cannot create new tasks of this type.
datrrsTypeInfo :: Lens' DescribeActivityTypeResponse ActivityTypeInfo
datrrsTypeInfo = lens _datrrsTypeInfo (\s a -> s {_datrrsTypeInfo = a})

-- | The configuration settings registered with the activity type.
datrrsConfiguration :: Lens' DescribeActivityTypeResponse ActivityTypeConfiguration
datrrsConfiguration = lens _datrrsConfiguration (\s a -> s {_datrrsConfiguration = a})

instance NFData DescribeActivityTypeResponse
