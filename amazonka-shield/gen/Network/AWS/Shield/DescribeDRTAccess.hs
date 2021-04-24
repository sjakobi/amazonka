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
-- Module      : Network.AWS.Shield.DescribeDRTAccess
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the current role and list of Amazon S3 log buckets used by the DDoS Response Team (DRT) to access your AWS account while assisting with attack mitigation.
module Network.AWS.Shield.DescribeDRTAccess
  ( -- * Creating a Request
    describeDRTAccess,
    DescribeDRTAccess,

    -- * Destructuring the Response
    describeDRTAccessResponse,
    DescribeDRTAccessResponse,

    -- * Response Lenses
    ddrtarrsRoleARN,
    ddrtarrsLogBucketList,
    ddrtarrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.Shield.Types

-- | /See:/ 'describeDRTAccess' smart constructor.
data DescribeDRTAccess = DescribeDRTAccess'
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DescribeDRTAccess' with the minimum fields required to make a request.
describeDRTAccess ::
  DescribeDRTAccess
describeDRTAccess = DescribeDRTAccess'

instance AWSRequest DescribeDRTAccess where
  type Rs DescribeDRTAccess = DescribeDRTAccessResponse
  request = postJSON shield
  response =
    receiveJSON
      ( \s h x ->
          DescribeDRTAccessResponse'
            <$> (x .?> "RoleArn")
            <*> (x .?> "LogBucketList" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeDRTAccess

instance NFData DescribeDRTAccess

instance ToHeaders DescribeDRTAccess where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AWSShield_20160616.DescribeDRTAccess" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DescribeDRTAccess where
  toJSON = const (Object mempty)

instance ToPath DescribeDRTAccess where
  toPath = const "/"

instance ToQuery DescribeDRTAccess where
  toQuery = const mempty

-- | /See:/ 'describeDRTAccessResponse' smart constructor.
data DescribeDRTAccessResponse = DescribeDRTAccessResponse'
  { _ddrtarrsRoleARN ::
      !(Maybe Text),
    _ddrtarrsLogBucketList ::
      !(Maybe [Text]),
    _ddrtarrsResponseStatus ::
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

-- | Creates a value of 'DescribeDRTAccessResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ddrtarrsRoleARN' - The Amazon Resource Name (ARN) of the role the DRT used to access your AWS account.
--
-- * 'ddrtarrsLogBucketList' - The list of Amazon S3 buckets accessed by the DRT.
--
-- * 'ddrtarrsResponseStatus' - -- | The response status code.
describeDRTAccessResponse ::
  -- | 'ddrtarrsResponseStatus'
  Int ->
  DescribeDRTAccessResponse
describeDRTAccessResponse pResponseStatus_ =
  DescribeDRTAccessResponse'
    { _ddrtarrsRoleARN =
        Nothing,
      _ddrtarrsLogBucketList = Nothing,
      _ddrtarrsResponseStatus = pResponseStatus_
    }

-- | The Amazon Resource Name (ARN) of the role the DRT used to access your AWS account.
ddrtarrsRoleARN :: Lens' DescribeDRTAccessResponse (Maybe Text)
ddrtarrsRoleARN = lens _ddrtarrsRoleARN (\s a -> s {_ddrtarrsRoleARN = a})

-- | The list of Amazon S3 buckets accessed by the DRT.
ddrtarrsLogBucketList :: Lens' DescribeDRTAccessResponse [Text]
ddrtarrsLogBucketList = lens _ddrtarrsLogBucketList (\s a -> s {_ddrtarrsLogBucketList = a}) . _Default . _Coerce

-- | -- | The response status code.
ddrtarrsResponseStatus :: Lens' DescribeDRTAccessResponse Int
ddrtarrsResponseStatus = lens _ddrtarrsResponseStatus (\s a -> s {_ddrtarrsResponseStatus = a})

instance NFData DescribeDRTAccessResponse
