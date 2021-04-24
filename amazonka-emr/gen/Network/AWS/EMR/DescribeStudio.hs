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
-- Module      : Network.AWS.EMR.DescribeStudio
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns details for the specified Amazon EMR Studio including ID, Name, VPC, Studio access URL, and so on.
module Network.AWS.EMR.DescribeStudio
  ( -- * Creating a Request
    describeStudio,
    DescribeStudio,

    -- * Request Lenses
    dStudioId,

    -- * Destructuring the Response
    describeStudioResponse,
    DescribeStudioResponse,

    -- * Response Lenses
    drsStudio,
    drsResponseStatus,
  )
where

import Network.AWS.EMR.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describeStudio' smart constructor.
newtype DescribeStudio = DescribeStudio'
  { _dStudioId ::
      Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DescribeStudio' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dStudioId' - The Amazon EMR Studio ID.
describeStudio ::
  -- | 'dStudioId'
  Text ->
  DescribeStudio
describeStudio pStudioId_ =
  DescribeStudio' {_dStudioId = pStudioId_}

-- | The Amazon EMR Studio ID.
dStudioId :: Lens' DescribeStudio Text
dStudioId = lens _dStudioId (\s a -> s {_dStudioId = a})

instance AWSRequest DescribeStudio where
  type Rs DescribeStudio = DescribeStudioResponse
  request = postJSON emr
  response =
    receiveJSON
      ( \s h x ->
          DescribeStudioResponse'
            <$> (x .?> "Studio") <*> (pure (fromEnum s))
      )

instance Hashable DescribeStudio

instance NFData DescribeStudio

instance ToHeaders DescribeStudio where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("ElasticMapReduce.DescribeStudio" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DescribeStudio where
  toJSON DescribeStudio' {..} =
    object
      (catMaybes [Just ("StudioId" .= _dStudioId)])

instance ToPath DescribeStudio where
  toPath = const "/"

instance ToQuery DescribeStudio where
  toQuery = const mempty

-- | /See:/ 'describeStudioResponse' smart constructor.
data DescribeStudioResponse = DescribeStudioResponse'
  { _drsStudio ::
      !(Maybe Studio),
    _drsResponseStatus ::
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

-- | Creates a value of 'DescribeStudioResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'drsStudio' - The Amazon EMR Studio details.
--
-- * 'drsResponseStatus' - -- | The response status code.
describeStudioResponse ::
  -- | 'drsResponseStatus'
  Int ->
  DescribeStudioResponse
describeStudioResponse pResponseStatus_ =
  DescribeStudioResponse'
    { _drsStudio = Nothing,
      _drsResponseStatus = pResponseStatus_
    }

-- | The Amazon EMR Studio details.
drsStudio :: Lens' DescribeStudioResponse (Maybe Studio)
drsStudio = lens _drsStudio (\s a -> s {_drsStudio = a})

-- | -- | The response status code.
drsResponseStatus :: Lens' DescribeStudioResponse Int
drsResponseStatus = lens _drsResponseStatus (\s a -> s {_drsResponseStatus = a})

instance NFData DescribeStudioResponse
