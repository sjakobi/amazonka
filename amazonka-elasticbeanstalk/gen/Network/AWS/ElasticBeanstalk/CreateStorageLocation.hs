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
-- Module      : Network.AWS.ElasticBeanstalk.CreateStorageLocation
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a bucket in Amazon S3 to store application versions, logs, and other files used by Elastic Beanstalk environments. The Elastic Beanstalk console and EB CLI call this API the first time you create an environment in a region. If the storage location already exists, @CreateStorageLocation@ still returns the bucket name but does not create a new bucket.
module Network.AWS.ElasticBeanstalk.CreateStorageLocation
  ( -- * Creating a Request
    createStorageLocation,
    CreateStorageLocation,

    -- * Destructuring the Response
    createStorageLocationResponse,
    CreateStorageLocationResponse,

    -- * Response Lenses
    cslrrsS3Bucket,
    cslrrsResponseStatus,
  )
where

import Network.AWS.ElasticBeanstalk.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'createStorageLocation' smart constructor.
data CreateStorageLocation = CreateStorageLocation'
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'CreateStorageLocation' with the minimum fields required to make a request.
createStorageLocation ::
  CreateStorageLocation
createStorageLocation = CreateStorageLocation'

instance AWSRequest CreateStorageLocation where
  type
    Rs CreateStorageLocation =
      CreateStorageLocationResponse
  request = postQuery elasticBeanstalk
  response =
    receiveXMLWrapper
      "CreateStorageLocationResult"
      ( \s h x ->
          CreateStorageLocationResponse'
            <$> (x .@? "S3Bucket") <*> (pure (fromEnum s))
      )

instance Hashable CreateStorageLocation

instance NFData CreateStorageLocation

instance ToHeaders CreateStorageLocation where
  toHeaders = const mempty

instance ToPath CreateStorageLocation where
  toPath = const "/"

instance ToQuery CreateStorageLocation where
  toQuery =
    const
      ( mconcat
          [ "Action" =: ("CreateStorageLocation" :: ByteString),
            "Version" =: ("2010-12-01" :: ByteString)
          ]
      )

-- | Results of a 'CreateStorageLocationResult' call.
--
--
--
-- /See:/ 'createStorageLocationResponse' smart constructor.
data CreateStorageLocationResponse = CreateStorageLocationResponse'
  { _cslrrsS3Bucket ::
      !( Maybe
           Text
       ),
    _cslrrsResponseStatus ::
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

-- | Creates a value of 'CreateStorageLocationResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cslrrsS3Bucket' - The name of the Amazon S3 bucket created.
--
-- * 'cslrrsResponseStatus' - -- | The response status code.
createStorageLocationResponse ::
  -- | 'cslrrsResponseStatus'
  Int ->
  CreateStorageLocationResponse
createStorageLocationResponse pResponseStatus_ =
  CreateStorageLocationResponse'
    { _cslrrsS3Bucket =
        Nothing,
      _cslrrsResponseStatus = pResponseStatus_
    }

-- | The name of the Amazon S3 bucket created.
cslrrsS3Bucket :: Lens' CreateStorageLocationResponse (Maybe Text)
cslrrsS3Bucket = lens _cslrrsS3Bucket (\s a -> s {_cslrrsS3Bucket = a})

-- | -- | The response status code.
cslrrsResponseStatus :: Lens' CreateStorageLocationResponse Int
cslrrsResponseStatus = lens _cslrrsResponseStatus (\s a -> s {_cslrrsResponseStatus = a})

instance NFData CreateStorageLocationResponse
