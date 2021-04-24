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
-- Module      : Network.AWS.IoT.DescribeDefaultAuthorizer
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes the default authorizer.
module Network.AWS.IoT.DescribeDefaultAuthorizer
  ( -- * Creating a Request
    describeDefaultAuthorizer,
    DescribeDefaultAuthorizer,

    -- * Destructuring the Response
    describeDefaultAuthorizerResponse,
    DescribeDefaultAuthorizerResponse,

    -- * Response Lenses
    ddarrsAuthorizerDescription,
    ddarrsResponseStatus,
  )
where

import Network.AWS.IoT.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describeDefaultAuthorizer' smart constructor.
data DescribeDefaultAuthorizer = DescribeDefaultAuthorizer'
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DescribeDefaultAuthorizer' with the minimum fields required to make a request.
describeDefaultAuthorizer ::
  DescribeDefaultAuthorizer
describeDefaultAuthorizer =
  DescribeDefaultAuthorizer'

instance AWSRequest DescribeDefaultAuthorizer where
  type
    Rs DescribeDefaultAuthorizer =
      DescribeDefaultAuthorizerResponse
  request = get ioT
  response =
    receiveJSON
      ( \s h x ->
          DescribeDefaultAuthorizerResponse'
            <$> (x .?> "authorizerDescription")
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeDefaultAuthorizer

instance NFData DescribeDefaultAuthorizer

instance ToHeaders DescribeDefaultAuthorizer where
  toHeaders = const mempty

instance ToPath DescribeDefaultAuthorizer where
  toPath = const "/default-authorizer"

instance ToQuery DescribeDefaultAuthorizer where
  toQuery = const mempty

-- | /See:/ 'describeDefaultAuthorizerResponse' smart constructor.
data DescribeDefaultAuthorizerResponse = DescribeDefaultAuthorizerResponse'
  { _ddarrsAuthorizerDescription ::
      !( Maybe
           AuthorizerDescription
       ),
    _ddarrsResponseStatus ::
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

-- | Creates a value of 'DescribeDefaultAuthorizerResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ddarrsAuthorizerDescription' - The default authorizer's description.
--
-- * 'ddarrsResponseStatus' - -- | The response status code.
describeDefaultAuthorizerResponse ::
  -- | 'ddarrsResponseStatus'
  Int ->
  DescribeDefaultAuthorizerResponse
describeDefaultAuthorizerResponse pResponseStatus_ =
  DescribeDefaultAuthorizerResponse'
    { _ddarrsAuthorizerDescription =
        Nothing,
      _ddarrsResponseStatus = pResponseStatus_
    }

-- | The default authorizer's description.
ddarrsAuthorizerDescription :: Lens' DescribeDefaultAuthorizerResponse (Maybe AuthorizerDescription)
ddarrsAuthorizerDescription = lens _ddarrsAuthorizerDescription (\s a -> s {_ddarrsAuthorizerDescription = a})

-- | -- | The response status code.
ddarrsResponseStatus :: Lens' DescribeDefaultAuthorizerResponse Int
ddarrsResponseStatus = lens _ddarrsResponseStatus (\s a -> s {_ddarrsResponseStatus = a})

instance NFData DescribeDefaultAuthorizerResponse
