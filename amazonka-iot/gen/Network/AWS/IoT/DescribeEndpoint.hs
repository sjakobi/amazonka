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
-- Module      : Network.AWS.IoT.DescribeEndpoint
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a unique endpoint specific to the AWS account making the call.
module Network.AWS.IoT.DescribeEndpoint
  ( -- * Creating a Request
    describeEndpoint,
    DescribeEndpoint,

    -- * Request Lenses
    deEndpointType,

    -- * Destructuring the Response
    describeEndpointResponse,
    DescribeEndpointResponse,

    -- * Response Lenses
    derrsEndpointAddress,
    derrsResponseStatus,
  )
where

import Network.AWS.IoT.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | The input for the DescribeEndpoint operation.
--
--
--
-- /See:/ 'describeEndpoint' smart constructor.
newtype DescribeEndpoint = DescribeEndpoint'
  { _deEndpointType ::
      Maybe Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DescribeEndpoint' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'deEndpointType' - The endpoint type. Valid endpoint types include:     * @iot:Data@ - Returns a VeriSign signed data endpoint.     * @iot:Data-ATS@ - Returns an ATS signed data endpoint.     * @iot:CredentialProvider@ - Returns an AWS IoT credentials provider API endpoint.     * @iot:Jobs@ - Returns an AWS IoT device management Jobs API endpoint. We strongly recommend that customers use the newer @iot:Data-ATS@ endpoint type to avoid issues related to the widespread distrust of Symantec certificate authorities.
describeEndpoint ::
  DescribeEndpoint
describeEndpoint =
  DescribeEndpoint' {_deEndpointType = Nothing}

-- | The endpoint type. Valid endpoint types include:     * @iot:Data@ - Returns a VeriSign signed data endpoint.     * @iot:Data-ATS@ - Returns an ATS signed data endpoint.     * @iot:CredentialProvider@ - Returns an AWS IoT credentials provider API endpoint.     * @iot:Jobs@ - Returns an AWS IoT device management Jobs API endpoint. We strongly recommend that customers use the newer @iot:Data-ATS@ endpoint type to avoid issues related to the widespread distrust of Symantec certificate authorities.
deEndpointType :: Lens' DescribeEndpoint (Maybe Text)
deEndpointType = lens _deEndpointType (\s a -> s {_deEndpointType = a})

instance AWSRequest DescribeEndpoint where
  type Rs DescribeEndpoint = DescribeEndpointResponse
  request = get ioT
  response =
    receiveJSON
      ( \s h x ->
          DescribeEndpointResponse'
            <$> (x .?> "endpointAddress") <*> (pure (fromEnum s))
      )

instance Hashable DescribeEndpoint

instance NFData DescribeEndpoint

instance ToHeaders DescribeEndpoint where
  toHeaders = const mempty

instance ToPath DescribeEndpoint where
  toPath = const "/endpoint"

instance ToQuery DescribeEndpoint where
  toQuery DescribeEndpoint' {..} =
    mconcat ["endpointType" =: _deEndpointType]

-- | The output from the DescribeEndpoint operation.
--
--
--
-- /See:/ 'describeEndpointResponse' smart constructor.
data DescribeEndpointResponse = DescribeEndpointResponse'
  { _derrsEndpointAddress ::
      !(Maybe Text),
    _derrsResponseStatus ::
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

-- | Creates a value of 'DescribeEndpointResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'derrsEndpointAddress' - The endpoint. The format of the endpoint is as follows: /identifier/ .iot./region/ .amazonaws.com.
--
-- * 'derrsResponseStatus' - -- | The response status code.
describeEndpointResponse ::
  -- | 'derrsResponseStatus'
  Int ->
  DescribeEndpointResponse
describeEndpointResponse pResponseStatus_ =
  DescribeEndpointResponse'
    { _derrsEndpointAddress =
        Nothing,
      _derrsResponseStatus = pResponseStatus_
    }

-- | The endpoint. The format of the endpoint is as follows: /identifier/ .iot./region/ .amazonaws.com.
derrsEndpointAddress :: Lens' DescribeEndpointResponse (Maybe Text)
derrsEndpointAddress = lens _derrsEndpointAddress (\s a -> s {_derrsEndpointAddress = a})

-- | -- | The response status code.
derrsResponseStatus :: Lens' DescribeEndpointResponse Int
derrsResponseStatus = lens _derrsResponseStatus (\s a -> s {_derrsResponseStatus = a})

instance NFData DescribeEndpointResponse
