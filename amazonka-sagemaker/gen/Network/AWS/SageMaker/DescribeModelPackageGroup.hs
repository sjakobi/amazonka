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
-- Module      : Network.AWS.SageMaker.DescribeModelPackageGroup
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a description for the specified model group.
module Network.AWS.SageMaker.DescribeModelPackageGroup
  ( -- * Creating a Request
    describeModelPackageGroup,
    DescribeModelPackageGroup,

    -- * Request Lenses
    dmpgModelPackageGroupName,

    -- * Destructuring the Response
    describeModelPackageGroupResponse,
    DescribeModelPackageGroupResponse,

    -- * Response Lenses
    dmpgrrsModelPackageGroupDescription,
    dmpgrrsResponseStatus,
    dmpgrrsModelPackageGroupName,
    dmpgrrsModelPackageGroupARN,
    dmpgrrsCreationTime,
    dmpgrrsCreatedBy,
    dmpgrrsModelPackageGroupStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SageMaker.Types

-- | /See:/ 'describeModelPackageGroup' smart constructor.
newtype DescribeModelPackageGroup = DescribeModelPackageGroup'
  { _dmpgModelPackageGroupName ::
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

-- | Creates a value of 'DescribeModelPackageGroup' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dmpgModelPackageGroupName' - The name of the model group to describe.
describeModelPackageGroup ::
  -- | 'dmpgModelPackageGroupName'
  Text ->
  DescribeModelPackageGroup
describeModelPackageGroup pModelPackageGroupName_ =
  DescribeModelPackageGroup'
    { _dmpgModelPackageGroupName =
        pModelPackageGroupName_
    }

-- | The name of the model group to describe.
dmpgModelPackageGroupName :: Lens' DescribeModelPackageGroup Text
dmpgModelPackageGroupName = lens _dmpgModelPackageGroupName (\s a -> s {_dmpgModelPackageGroupName = a})

instance AWSRequest DescribeModelPackageGroup where
  type
    Rs DescribeModelPackageGroup =
      DescribeModelPackageGroupResponse
  request = postJSON sageMaker
  response =
    receiveJSON
      ( \s h x ->
          DescribeModelPackageGroupResponse'
            <$> (x .?> "ModelPackageGroupDescription")
            <*> (pure (fromEnum s))
            <*> (x .:> "ModelPackageGroupName")
            <*> (x .:> "ModelPackageGroupArn")
            <*> (x .:> "CreationTime")
            <*> (x .:> "CreatedBy")
            <*> (x .:> "ModelPackageGroupStatus")
      )

instance Hashable DescribeModelPackageGroup

instance NFData DescribeModelPackageGroup

instance ToHeaders DescribeModelPackageGroup where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "SageMaker.DescribeModelPackageGroup" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DescribeModelPackageGroup where
  toJSON DescribeModelPackageGroup' {..} =
    object
      ( catMaybes
          [ Just
              ( "ModelPackageGroupName"
                  .= _dmpgModelPackageGroupName
              )
          ]
      )

instance ToPath DescribeModelPackageGroup where
  toPath = const "/"

instance ToQuery DescribeModelPackageGroup where
  toQuery = const mempty

-- | /See:/ 'describeModelPackageGroupResponse' smart constructor.
data DescribeModelPackageGroupResponse = DescribeModelPackageGroupResponse'
  { _dmpgrrsModelPackageGroupDescription ::
      !( Maybe
           Text
       ),
    _dmpgrrsResponseStatus ::
      !Int,
    _dmpgrrsModelPackageGroupName ::
      !Text,
    _dmpgrrsModelPackageGroupARN ::
      !Text,
    _dmpgrrsCreationTime ::
      !POSIX,
    _dmpgrrsCreatedBy ::
      !UserContext,
    _dmpgrrsModelPackageGroupStatus ::
      !ModelPackageGroupStatus
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DescribeModelPackageGroupResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dmpgrrsModelPackageGroupDescription' - A description of the model group.
--
-- * 'dmpgrrsResponseStatus' - -- | The response status code.
--
-- * 'dmpgrrsModelPackageGroupName' - The name of the model group.
--
-- * 'dmpgrrsModelPackageGroupARN' - The Amazon Resource Name (ARN) of the model group.
--
-- * 'dmpgrrsCreationTime' - The time that the model group was created.
--
-- * 'dmpgrrsCreatedBy' - Undocumented member.
--
-- * 'dmpgrrsModelPackageGroupStatus' - The status of the model group.
describeModelPackageGroupResponse ::
  -- | 'dmpgrrsResponseStatus'
  Int ->
  -- | 'dmpgrrsModelPackageGroupName'
  Text ->
  -- | 'dmpgrrsModelPackageGroupARN'
  Text ->
  -- | 'dmpgrrsCreationTime'
  UTCTime ->
  -- | 'dmpgrrsCreatedBy'
  UserContext ->
  -- | 'dmpgrrsModelPackageGroupStatus'
  ModelPackageGroupStatus ->
  DescribeModelPackageGroupResponse
describeModelPackageGroupResponse
  pResponseStatus_
  pModelPackageGroupName_
  pModelPackageGroupARN_
  pCreationTime_
  pCreatedBy_
  pModelPackageGroupStatus_ =
    DescribeModelPackageGroupResponse'
      { _dmpgrrsModelPackageGroupDescription =
          Nothing,
        _dmpgrrsResponseStatus =
          pResponseStatus_,
        _dmpgrrsModelPackageGroupName =
          pModelPackageGroupName_,
        _dmpgrrsModelPackageGroupARN =
          pModelPackageGroupARN_,
        _dmpgrrsCreationTime =
          _Time # pCreationTime_,
        _dmpgrrsCreatedBy = pCreatedBy_,
        _dmpgrrsModelPackageGroupStatus =
          pModelPackageGroupStatus_
      }

-- | A description of the model group.
dmpgrrsModelPackageGroupDescription :: Lens' DescribeModelPackageGroupResponse (Maybe Text)
dmpgrrsModelPackageGroupDescription = lens _dmpgrrsModelPackageGroupDescription (\s a -> s {_dmpgrrsModelPackageGroupDescription = a})

-- | -- | The response status code.
dmpgrrsResponseStatus :: Lens' DescribeModelPackageGroupResponse Int
dmpgrrsResponseStatus = lens _dmpgrrsResponseStatus (\s a -> s {_dmpgrrsResponseStatus = a})

-- | The name of the model group.
dmpgrrsModelPackageGroupName :: Lens' DescribeModelPackageGroupResponse Text
dmpgrrsModelPackageGroupName = lens _dmpgrrsModelPackageGroupName (\s a -> s {_dmpgrrsModelPackageGroupName = a})

-- | The Amazon Resource Name (ARN) of the model group.
dmpgrrsModelPackageGroupARN :: Lens' DescribeModelPackageGroupResponse Text
dmpgrrsModelPackageGroupARN = lens _dmpgrrsModelPackageGroupARN (\s a -> s {_dmpgrrsModelPackageGroupARN = a})

-- | The time that the model group was created.
dmpgrrsCreationTime :: Lens' DescribeModelPackageGroupResponse UTCTime
dmpgrrsCreationTime = lens _dmpgrrsCreationTime (\s a -> s {_dmpgrrsCreationTime = a}) . _Time

-- | Undocumented member.
dmpgrrsCreatedBy :: Lens' DescribeModelPackageGroupResponse UserContext
dmpgrrsCreatedBy = lens _dmpgrrsCreatedBy (\s a -> s {_dmpgrrsCreatedBy = a})

-- | The status of the model group.
dmpgrrsModelPackageGroupStatus :: Lens' DescribeModelPackageGroupResponse ModelPackageGroupStatus
dmpgrrsModelPackageGroupStatus = lens _dmpgrrsModelPackageGroupStatus (\s a -> s {_dmpgrrsModelPackageGroupStatus = a})

instance NFData DescribeModelPackageGroupResponse
