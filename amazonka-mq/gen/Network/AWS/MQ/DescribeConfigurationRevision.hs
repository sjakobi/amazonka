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
-- Module      : Network.AWS.MQ.DescribeConfigurationRevision
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the specified configuration revision for the specified configuration.
module Network.AWS.MQ.DescribeConfigurationRevision
  ( -- * Creating a Request
    describeConfigurationRevision,
    DescribeConfigurationRevision,

    -- * Request Lenses
    dcrConfigurationRevision,
    dcrConfigurationId,

    -- * Destructuring the Response
    describeConfigurationRevisionResponse,
    DescribeConfigurationRevisionResponse,

    -- * Response Lenses
    dcrrrsData,
    dcrrrsConfigurationId,
    dcrrrsDescription,
    dcrrrsCreated,
    dcrrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.MQ.Types
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describeConfigurationRevision' smart constructor.
data DescribeConfigurationRevision = DescribeConfigurationRevision'
  { _dcrConfigurationRevision ::
      !Text,
    _dcrConfigurationId ::
      !Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DescribeConfigurationRevision' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dcrConfigurationRevision' - The revision of the configuration.
--
-- * 'dcrConfigurationId' - The unique ID that Amazon MQ generates for the configuration.
describeConfigurationRevision ::
  -- | 'dcrConfigurationRevision'
  Text ->
  -- | 'dcrConfigurationId'
  Text ->
  DescribeConfigurationRevision
describeConfigurationRevision
  pConfigurationRevision_
  pConfigurationId_ =
    DescribeConfigurationRevision'
      { _dcrConfigurationRevision =
          pConfigurationRevision_,
        _dcrConfigurationId = pConfigurationId_
      }

-- | The revision of the configuration.
dcrConfigurationRevision :: Lens' DescribeConfigurationRevision Text
dcrConfigurationRevision = lens _dcrConfigurationRevision (\s a -> s {_dcrConfigurationRevision = a})

-- | The unique ID that Amazon MQ generates for the configuration.
dcrConfigurationId :: Lens' DescribeConfigurationRevision Text
dcrConfigurationId = lens _dcrConfigurationId (\s a -> s {_dcrConfigurationId = a})

instance AWSRequest DescribeConfigurationRevision where
  type
    Rs DescribeConfigurationRevision =
      DescribeConfigurationRevisionResponse
  request = get mq
  response =
    receiveJSON
      ( \s h x ->
          DescribeConfigurationRevisionResponse'
            <$> (x .?> "data")
            <*> (x .?> "configurationId")
            <*> (x .?> "description")
            <*> (x .?> "created")
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeConfigurationRevision

instance NFData DescribeConfigurationRevision

instance ToHeaders DescribeConfigurationRevision where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToPath DescribeConfigurationRevision where
  toPath DescribeConfigurationRevision' {..} =
    mconcat
      [ "/v1/configurations/",
        toBS _dcrConfigurationId,
        "/revisions/",
        toBS _dcrConfigurationRevision
      ]

instance ToQuery DescribeConfigurationRevision where
  toQuery = const mempty

-- | /See:/ 'describeConfigurationRevisionResponse' smart constructor.
data DescribeConfigurationRevisionResponse = DescribeConfigurationRevisionResponse'
  { _dcrrrsData ::
      !( Maybe
           Text
       ),
    _dcrrrsConfigurationId ::
      !( Maybe
           Text
       ),
    _dcrrrsDescription ::
      !( Maybe
           Text
       ),
    _dcrrrsCreated ::
      !( Maybe
           POSIX
       ),
    _dcrrrsResponseStatus ::
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

-- | Creates a value of 'DescribeConfigurationRevisionResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dcrrrsData' - Required. The base64-encoded XML configuration.
--
-- * 'dcrrrsConfigurationId' - Required. The unique ID that Amazon MQ generates for the configuration.
--
-- * 'dcrrrsDescription' - The description of the configuration.
--
-- * 'dcrrrsCreated' - Required. The date and time of the configuration.
--
-- * 'dcrrrsResponseStatus' - -- | The response status code.
describeConfigurationRevisionResponse ::
  -- | 'dcrrrsResponseStatus'
  Int ->
  DescribeConfigurationRevisionResponse
describeConfigurationRevisionResponse
  pResponseStatus_ =
    DescribeConfigurationRevisionResponse'
      { _dcrrrsData =
          Nothing,
        _dcrrrsConfigurationId = Nothing,
        _dcrrrsDescription = Nothing,
        _dcrrrsCreated = Nothing,
        _dcrrrsResponseStatus =
          pResponseStatus_
      }

-- | Required. The base64-encoded XML configuration.
dcrrrsData :: Lens' DescribeConfigurationRevisionResponse (Maybe Text)
dcrrrsData = lens _dcrrrsData (\s a -> s {_dcrrrsData = a})

-- | Required. The unique ID that Amazon MQ generates for the configuration.
dcrrrsConfigurationId :: Lens' DescribeConfigurationRevisionResponse (Maybe Text)
dcrrrsConfigurationId = lens _dcrrrsConfigurationId (\s a -> s {_dcrrrsConfigurationId = a})

-- | The description of the configuration.
dcrrrsDescription :: Lens' DescribeConfigurationRevisionResponse (Maybe Text)
dcrrrsDescription = lens _dcrrrsDescription (\s a -> s {_dcrrrsDescription = a})

-- | Required. The date and time of the configuration.
dcrrrsCreated :: Lens' DescribeConfigurationRevisionResponse (Maybe UTCTime)
dcrrrsCreated = lens _dcrrrsCreated (\s a -> s {_dcrrrsCreated = a}) . mapping _Time

-- | -- | The response status code.
dcrrrsResponseStatus :: Lens' DescribeConfigurationRevisionResponse Int
dcrrrsResponseStatus = lens _dcrrrsResponseStatus (\s a -> s {_dcrrrsResponseStatus = a})

instance NFData DescribeConfigurationRevisionResponse
