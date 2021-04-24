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
-- Module      : Network.AWS.ELBv2.DescribeTargetGroupAttributes
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes the attributes for the specified target group.
--
--
-- For more information, see the following:
--
--     * <https://docs.aws.amazon.com/elasticloadbalancing/latest/application/load-balancer-target-groups.html#target-group-attributes Target group attributes> in the /Application Load Balancers Guide/
--
--     * <https://docs.aws.amazon.com/elasticloadbalancing/latest/network/load-balancer-target-groups.html#target-group-attributes Target group attributes> in the /Network Load Balancers Guide/
--
--     * <https://docs.aws.amazon.com/elasticloadbalancing/latest/gateway/target-groups.html#target-group-attributes Target group attributes> in the /Gateway Load Balancers Guide/
module Network.AWS.ELBv2.DescribeTargetGroupAttributes
  ( -- * Creating a Request
    describeTargetGroupAttributes,
    DescribeTargetGroupAttributes,

    -- * Request Lenses
    dtgaTargetGroupARN,

    -- * Destructuring the Response
    describeTargetGroupAttributesResponse,
    DescribeTargetGroupAttributesResponse,

    -- * Response Lenses
    dtgarrsAttributes,
    dtgarrsResponseStatus,
  )
where

import Network.AWS.ELBv2.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describeTargetGroupAttributes' smart constructor.
newtype DescribeTargetGroupAttributes = DescribeTargetGroupAttributes'
  { _dtgaTargetGroupARN ::
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

-- | Creates a value of 'DescribeTargetGroupAttributes' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dtgaTargetGroupARN' - The Amazon Resource Name (ARN) of the target group.
describeTargetGroupAttributes ::
  -- | 'dtgaTargetGroupARN'
  Text ->
  DescribeTargetGroupAttributes
describeTargetGroupAttributes pTargetGroupARN_ =
  DescribeTargetGroupAttributes'
    { _dtgaTargetGroupARN =
        pTargetGroupARN_
    }

-- | The Amazon Resource Name (ARN) of the target group.
dtgaTargetGroupARN :: Lens' DescribeTargetGroupAttributes Text
dtgaTargetGroupARN = lens _dtgaTargetGroupARN (\s a -> s {_dtgaTargetGroupARN = a})

instance AWSRequest DescribeTargetGroupAttributes where
  type
    Rs DescribeTargetGroupAttributes =
      DescribeTargetGroupAttributesResponse
  request = postQuery eLBv2
  response =
    receiveXMLWrapper
      "DescribeTargetGroupAttributesResult"
      ( \s h x ->
          DescribeTargetGroupAttributesResponse'
            <$> ( x .@? "Attributes" .!@ mempty
                    >>= may (parseXMLList "member")
                )
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeTargetGroupAttributes

instance NFData DescribeTargetGroupAttributes

instance ToHeaders DescribeTargetGroupAttributes where
  toHeaders = const mempty

instance ToPath DescribeTargetGroupAttributes where
  toPath = const "/"

instance ToQuery DescribeTargetGroupAttributes where
  toQuery DescribeTargetGroupAttributes' {..} =
    mconcat
      [ "Action"
          =: ("DescribeTargetGroupAttributes" :: ByteString),
        "Version" =: ("2015-12-01" :: ByteString),
        "TargetGroupArn" =: _dtgaTargetGroupARN
      ]

-- | /See:/ 'describeTargetGroupAttributesResponse' smart constructor.
data DescribeTargetGroupAttributesResponse = DescribeTargetGroupAttributesResponse'
  { _dtgarrsAttributes ::
      !( Maybe
           [TargetGroupAttribute]
       ),
    _dtgarrsResponseStatus ::
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

-- | Creates a value of 'DescribeTargetGroupAttributesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dtgarrsAttributes' - Information about the target group attributes
--
-- * 'dtgarrsResponseStatus' - -- | The response status code.
describeTargetGroupAttributesResponse ::
  -- | 'dtgarrsResponseStatus'
  Int ->
  DescribeTargetGroupAttributesResponse
describeTargetGroupAttributesResponse
  pResponseStatus_ =
    DescribeTargetGroupAttributesResponse'
      { _dtgarrsAttributes =
          Nothing,
        _dtgarrsResponseStatus =
          pResponseStatus_
      }

-- | Information about the target group attributes
dtgarrsAttributes :: Lens' DescribeTargetGroupAttributesResponse [TargetGroupAttribute]
dtgarrsAttributes = lens _dtgarrsAttributes (\s a -> s {_dtgarrsAttributes = a}) . _Default . _Coerce

-- | -- | The response status code.
dtgarrsResponseStatus :: Lens' DescribeTargetGroupAttributesResponse Int
dtgarrsResponseStatus = lens _dtgarrsResponseStatus (\s a -> s {_dtgarrsResponseStatus = a})

instance NFData DescribeTargetGroupAttributesResponse
