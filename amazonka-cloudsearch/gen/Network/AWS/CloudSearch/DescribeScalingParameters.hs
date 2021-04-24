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
-- Module      : Network.AWS.CloudSearch.DescribeScalingParameters
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the scaling parameters configured for a domain. A domain's scaling parameters specify the desired search instance type and replication count. For more information, see <http://docs.aws.amazon.com/cloudsearch/latest/developerguide/configuring-scaling-options.html Configuring Scaling Options> in the /Amazon CloudSearch Developer Guide/ .
module Network.AWS.CloudSearch.DescribeScalingParameters
  ( -- * Creating a Request
    describeScalingParameters,
    DescribeScalingParameters,

    -- * Request Lenses
    dspDomainName,

    -- * Destructuring the Response
    describeScalingParametersResponse,
    DescribeScalingParametersResponse,

    -- * Response Lenses
    dsprrsResponseStatus,
    dsprrsScalingParameters,
  )
where

import Network.AWS.CloudSearch.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Container for the parameters to the @'DescribeScalingParameters' @ operation. Specifies the name of the domain you want to describe.
--
--
--
-- /See:/ 'describeScalingParameters' smart constructor.
newtype DescribeScalingParameters = DescribeScalingParameters'
  { _dspDomainName ::
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

-- | Creates a value of 'DescribeScalingParameters' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dspDomainName' - Undocumented member.
describeScalingParameters ::
  -- | 'dspDomainName'
  Text ->
  DescribeScalingParameters
describeScalingParameters pDomainName_ =
  DescribeScalingParameters'
    { _dspDomainName =
        pDomainName_
    }

-- | Undocumented member.
dspDomainName :: Lens' DescribeScalingParameters Text
dspDomainName = lens _dspDomainName (\s a -> s {_dspDomainName = a})

instance AWSRequest DescribeScalingParameters where
  type
    Rs DescribeScalingParameters =
      DescribeScalingParametersResponse
  request = postQuery cloudSearch
  response =
    receiveXMLWrapper
      "DescribeScalingParametersResult"
      ( \s h x ->
          DescribeScalingParametersResponse'
            <$> (pure (fromEnum s)) <*> (x .@ "ScalingParameters")
      )

instance Hashable DescribeScalingParameters

instance NFData DescribeScalingParameters

instance ToHeaders DescribeScalingParameters where
  toHeaders = const mempty

instance ToPath DescribeScalingParameters where
  toPath = const "/"

instance ToQuery DescribeScalingParameters where
  toQuery DescribeScalingParameters' {..} =
    mconcat
      [ "Action"
          =: ("DescribeScalingParameters" :: ByteString),
        "Version" =: ("2013-01-01" :: ByteString),
        "DomainName" =: _dspDomainName
      ]

-- | The result of a @DescribeScalingParameters@ request. Contains the scaling parameters configured for the domain specified in the request.
--
--
--
-- /See:/ 'describeScalingParametersResponse' smart constructor.
data DescribeScalingParametersResponse = DescribeScalingParametersResponse'
  { _dsprrsResponseStatus ::
      !Int,
    _dsprrsScalingParameters ::
      !ScalingParametersStatus
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DescribeScalingParametersResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dsprrsResponseStatus' - -- | The response status code.
--
-- * 'dsprrsScalingParameters' - Undocumented member.
describeScalingParametersResponse ::
  -- | 'dsprrsResponseStatus'
  Int ->
  -- | 'dsprrsScalingParameters'
  ScalingParametersStatus ->
  DescribeScalingParametersResponse
describeScalingParametersResponse
  pResponseStatus_
  pScalingParameters_ =
    DescribeScalingParametersResponse'
      { _dsprrsResponseStatus =
          pResponseStatus_,
        _dsprrsScalingParameters =
          pScalingParameters_
      }

-- | -- | The response status code.
dsprrsResponseStatus :: Lens' DescribeScalingParametersResponse Int
dsprrsResponseStatus = lens _dsprrsResponseStatus (\s a -> s {_dsprrsResponseStatus = a})

-- | Undocumented member.
dsprrsScalingParameters :: Lens' DescribeScalingParametersResponse ScalingParametersStatus
dsprrsScalingParameters = lens _dsprrsScalingParameters (\s a -> s {_dsprrsScalingParameters = a})

instance NFData DescribeScalingParametersResponse
