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
-- Module      : Network.AWS.EC2.DescribeConversionTasks
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes the specified conversion tasks or all your conversion tasks. For more information, see the <https://docs.aws.amazon.com/vm-import/latest/userguide/ VM Import/Export User Guide> .
--
--
-- For information about the import manifest referenced by this API action, see <https://docs.aws.amazon.com/AWSEC2/latest/APIReference/manifest.html VM Import Manifest> .
module Network.AWS.EC2.DescribeConversionTasks
  ( -- * Creating a Request
    describeConversionTasks,
    DescribeConversionTasks,

    -- * Request Lenses
    dctDryRun,
    dctConversionTaskIds,

    -- * Destructuring the Response
    describeConversionTasksResponse,
    DescribeConversionTasksResponse,

    -- * Response Lenses
    dctrrsConversionTasks,
    dctrrsResponseStatus,
  )
where

import Network.AWS.EC2.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describeConversionTasks' smart constructor.
data DescribeConversionTasks = DescribeConversionTasks'
  { _dctDryRun ::
      !(Maybe Bool),
    _dctConversionTaskIds ::
      !(Maybe [Text])
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DescribeConversionTasks' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dctDryRun' - Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
--
-- * 'dctConversionTaskIds' - The conversion task IDs.
describeConversionTasks ::
  DescribeConversionTasks
describeConversionTasks =
  DescribeConversionTasks'
    { _dctDryRun = Nothing,
      _dctConversionTaskIds = Nothing
    }

-- | Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
dctDryRun :: Lens' DescribeConversionTasks (Maybe Bool)
dctDryRun = lens _dctDryRun (\s a -> s {_dctDryRun = a})

-- | The conversion task IDs.
dctConversionTaskIds :: Lens' DescribeConversionTasks [Text]
dctConversionTaskIds = lens _dctConversionTaskIds (\s a -> s {_dctConversionTaskIds = a}) . _Default . _Coerce

instance AWSRequest DescribeConversionTasks where
  type
    Rs DescribeConversionTasks =
      DescribeConversionTasksResponse
  request = postQuery ec2
  response =
    receiveXML
      ( \s h x ->
          DescribeConversionTasksResponse'
            <$> ( x .@? "conversionTasks" .!@ mempty
                    >>= may (parseXMLList "item")
                )
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeConversionTasks

instance NFData DescribeConversionTasks

instance ToHeaders DescribeConversionTasks where
  toHeaders = const mempty

instance ToPath DescribeConversionTasks where
  toPath = const "/"

instance ToQuery DescribeConversionTasks where
  toQuery DescribeConversionTasks' {..} =
    mconcat
      [ "Action"
          =: ("DescribeConversionTasks" :: ByteString),
        "Version" =: ("2016-11-15" :: ByteString),
        "DryRun" =: _dctDryRun,
        toQuery
          ( toQueryList "ConversionTaskId"
              <$> _dctConversionTaskIds
          )
      ]

-- | /See:/ 'describeConversionTasksResponse' smart constructor.
data DescribeConversionTasksResponse = DescribeConversionTasksResponse'
  { _dctrrsConversionTasks ::
      !( Maybe
           [ConversionTask]
       ),
    _dctrrsResponseStatus ::
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

-- | Creates a value of 'DescribeConversionTasksResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dctrrsConversionTasks' - Information about the conversion tasks.
--
-- * 'dctrrsResponseStatus' - -- | The response status code.
describeConversionTasksResponse ::
  -- | 'dctrrsResponseStatus'
  Int ->
  DescribeConversionTasksResponse
describeConversionTasksResponse pResponseStatus_ =
  DescribeConversionTasksResponse'
    { _dctrrsConversionTasks =
        Nothing,
      _dctrrsResponseStatus = pResponseStatus_
    }

-- | Information about the conversion tasks.
dctrrsConversionTasks :: Lens' DescribeConversionTasksResponse [ConversionTask]
dctrrsConversionTasks = lens _dctrrsConversionTasks (\s a -> s {_dctrrsConversionTasks = a}) . _Default . _Coerce

-- | -- | The response status code.
dctrrsResponseStatus :: Lens' DescribeConversionTasksResponse Int
dctrrsResponseStatus = lens _dctrrsResponseStatus (\s a -> s {_dctrrsResponseStatus = a})

instance NFData DescribeConversionTasksResponse
