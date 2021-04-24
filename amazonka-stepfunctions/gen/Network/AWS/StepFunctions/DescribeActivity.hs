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
-- Module      : Network.AWS.StepFunctions.DescribeActivity
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes an activity.
module Network.AWS.StepFunctions.DescribeActivity
  ( -- * Creating a Request
    describeActivity,
    DescribeActivity,

    -- * Request Lenses
    dActivityARN,

    -- * Destructuring the Response
    describeActivityResponse,
    DescribeActivityResponse,

    -- * Response Lenses
    drsResponseStatus,
    drsActivityARN,
    drsName,
    drsCreationDate,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.StepFunctions.Types

-- | /See:/ 'describeActivity' smart constructor.
newtype DescribeActivity = DescribeActivity'
  { _dActivityARN ::
      Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DescribeActivity' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dActivityARN' - The Amazon Resource Name (ARN) of the activity to describe.
describeActivity ::
  -- | 'dActivityARN'
  Text ->
  DescribeActivity
describeActivity pActivityARN_ =
  DescribeActivity' {_dActivityARN = pActivityARN_}

-- | The Amazon Resource Name (ARN) of the activity to describe.
dActivityARN :: Lens' DescribeActivity Text
dActivityARN = lens _dActivityARN (\s a -> s {_dActivityARN = a})

instance AWSRequest DescribeActivity where
  type Rs DescribeActivity = DescribeActivityResponse
  request = postJSON stepFunctions
  response =
    receiveJSON
      ( \s h x ->
          DescribeActivityResponse'
            <$> (pure (fromEnum s))
            <*> (x .:> "activityArn")
            <*> (x .:> "name")
            <*> (x .:> "creationDate")
      )

instance Hashable DescribeActivity

instance NFData DescribeActivity

instance ToHeaders DescribeActivity where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("AWSStepFunctions.DescribeActivity" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.0" :: ByteString)
          ]
      )

instance ToJSON DescribeActivity where
  toJSON DescribeActivity' {..} =
    object
      (catMaybes [Just ("activityArn" .= _dActivityARN)])

instance ToPath DescribeActivity where
  toPath = const "/"

instance ToQuery DescribeActivity where
  toQuery = const mempty

-- | /See:/ 'describeActivityResponse' smart constructor.
data DescribeActivityResponse = DescribeActivityResponse'
  { _drsResponseStatus ::
      !Int,
    _drsActivityARN ::
      !Text,
    _drsName :: !Text,
    _drsCreationDate ::
      !POSIX
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DescribeActivityResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'drsResponseStatus' - -- | The response status code.
--
-- * 'drsActivityARN' - The Amazon Resource Name (ARN) that identifies the activity.
--
-- * 'drsName' - The name of the activity. A name must /not/ contain:     * white space     * brackets @< > { } [ ]@      * wildcard characters @? *@      * special characters @" # % \ ^ | ~ ` $ & , ; : /@      * control characters (@U+0000-001F@ , @U+007F-009F@ ) To enable logging with CloudWatch Logs, the name should only contain 0-9, A-Z, a-z, - and _.
--
-- * 'drsCreationDate' - The date the activity is created.
describeActivityResponse ::
  -- | 'drsResponseStatus'
  Int ->
  -- | 'drsActivityARN'
  Text ->
  -- | 'drsName'
  Text ->
  -- | 'drsCreationDate'
  UTCTime ->
  DescribeActivityResponse
describeActivityResponse
  pResponseStatus_
  pActivityARN_
  pName_
  pCreationDate_ =
    DescribeActivityResponse'
      { _drsResponseStatus =
          pResponseStatus_,
        _drsActivityARN = pActivityARN_,
        _drsName = pName_,
        _drsCreationDate = _Time # pCreationDate_
      }

-- | -- | The response status code.
drsResponseStatus :: Lens' DescribeActivityResponse Int
drsResponseStatus = lens _drsResponseStatus (\s a -> s {_drsResponseStatus = a})

-- | The Amazon Resource Name (ARN) that identifies the activity.
drsActivityARN :: Lens' DescribeActivityResponse Text
drsActivityARN = lens _drsActivityARN (\s a -> s {_drsActivityARN = a})

-- | The name of the activity. A name must /not/ contain:     * white space     * brackets @< > { } [ ]@      * wildcard characters @? *@      * special characters @" # % \ ^ | ~ ` $ & , ; : /@      * control characters (@U+0000-001F@ , @U+007F-009F@ ) To enable logging with CloudWatch Logs, the name should only contain 0-9, A-Z, a-z, - and _.
drsName :: Lens' DescribeActivityResponse Text
drsName = lens _drsName (\s a -> s {_drsName = a})

-- | The date the activity is created.
drsCreationDate :: Lens' DescribeActivityResponse UTCTime
drsCreationDate = lens _drsCreationDate (\s a -> s {_drsCreationDate = a}) . _Time

instance NFData DescribeActivityResponse
