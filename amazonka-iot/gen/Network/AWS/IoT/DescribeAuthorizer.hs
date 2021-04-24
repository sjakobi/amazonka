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
-- Module      : Network.AWS.IoT.DescribeAuthorizer
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes an authorizer.
module Network.AWS.IoT.DescribeAuthorizer
  ( -- * Creating a Request
    describeAuthorizer,
    DescribeAuthorizer,

    -- * Request Lenses
    daAuthorizerName,

    -- * Destructuring the Response
    describeAuthorizerResponse,
    DescribeAuthorizerResponse,

    -- * Response Lenses
    darrsAuthorizerDescription,
    darrsResponseStatus,
  )
where

import Network.AWS.IoT.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describeAuthorizer' smart constructor.
newtype DescribeAuthorizer = DescribeAuthorizer'
  { _daAuthorizerName ::
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

-- | Creates a value of 'DescribeAuthorizer' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'daAuthorizerName' - The name of the authorizer to describe.
describeAuthorizer ::
  -- | 'daAuthorizerName'
  Text ->
  DescribeAuthorizer
describeAuthorizer pAuthorizerName_ =
  DescribeAuthorizer'
    { _daAuthorizerName =
        pAuthorizerName_
    }

-- | The name of the authorizer to describe.
daAuthorizerName :: Lens' DescribeAuthorizer Text
daAuthorizerName = lens _daAuthorizerName (\s a -> s {_daAuthorizerName = a})

instance AWSRequest DescribeAuthorizer where
  type
    Rs DescribeAuthorizer =
      DescribeAuthorizerResponse
  request = get ioT
  response =
    receiveJSON
      ( \s h x ->
          DescribeAuthorizerResponse'
            <$> (x .?> "authorizerDescription")
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeAuthorizer

instance NFData DescribeAuthorizer

instance ToHeaders DescribeAuthorizer where
  toHeaders = const mempty

instance ToPath DescribeAuthorizer where
  toPath DescribeAuthorizer' {..} =
    mconcat ["/authorizer/", toBS _daAuthorizerName]

instance ToQuery DescribeAuthorizer where
  toQuery = const mempty

-- | /See:/ 'describeAuthorizerResponse' smart constructor.
data DescribeAuthorizerResponse = DescribeAuthorizerResponse'
  { _darrsAuthorizerDescription ::
      !( Maybe
           AuthorizerDescription
       ),
    _darrsResponseStatus ::
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

-- | Creates a value of 'DescribeAuthorizerResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'darrsAuthorizerDescription' - The authorizer description.
--
-- * 'darrsResponseStatus' - -- | The response status code.
describeAuthorizerResponse ::
  -- | 'darrsResponseStatus'
  Int ->
  DescribeAuthorizerResponse
describeAuthorizerResponse pResponseStatus_ =
  DescribeAuthorizerResponse'
    { _darrsAuthorizerDescription =
        Nothing,
      _darrsResponseStatus = pResponseStatus_
    }

-- | The authorizer description.
darrsAuthorizerDescription :: Lens' DescribeAuthorizerResponse (Maybe AuthorizerDescription)
darrsAuthorizerDescription = lens _darrsAuthorizerDescription (\s a -> s {_darrsAuthorizerDescription = a})

-- | -- | The response status code.
darrsResponseStatus :: Lens' DescribeAuthorizerResponse Int
darrsResponseStatus = lens _darrsResponseStatus (\s a -> s {_darrsResponseStatus = a})

instance NFData DescribeAuthorizerResponse
