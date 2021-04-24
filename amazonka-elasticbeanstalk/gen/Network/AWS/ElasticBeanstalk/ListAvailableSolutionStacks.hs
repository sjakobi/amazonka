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
-- Module      : Network.AWS.ElasticBeanstalk.ListAvailableSolutionStacks
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a list of the available solution stack names, with the public version first and then in reverse chronological order.
module Network.AWS.ElasticBeanstalk.ListAvailableSolutionStacks
  ( -- * Creating a Request
    listAvailableSolutionStacks,
    ListAvailableSolutionStacks,

    -- * Destructuring the Response
    listAvailableSolutionStacksResponse,
    ListAvailableSolutionStacksResponse,

    -- * Response Lenses
    lassrrsSolutionStacks,
    lassrrsSolutionStackDetails,
    lassrrsResponseStatus,
  )
where

import Network.AWS.ElasticBeanstalk.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'listAvailableSolutionStacks' smart constructor.
data ListAvailableSolutionStacks = ListAvailableSolutionStacks'
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'ListAvailableSolutionStacks' with the minimum fields required to make a request.
listAvailableSolutionStacks ::
  ListAvailableSolutionStacks
listAvailableSolutionStacks =
  ListAvailableSolutionStacks'

instance AWSRequest ListAvailableSolutionStacks where
  type
    Rs ListAvailableSolutionStacks =
      ListAvailableSolutionStacksResponse
  request = postQuery elasticBeanstalk
  response =
    receiveXMLWrapper
      "ListAvailableSolutionStacksResult"
      ( \s h x ->
          ListAvailableSolutionStacksResponse'
            <$> ( x .@? "SolutionStacks" .!@ mempty
                    >>= may (parseXMLList "member")
                )
            <*> ( x .@? "SolutionStackDetails" .!@ mempty
                    >>= may (parseXMLList "member")
                )
            <*> (pure (fromEnum s))
      )

instance Hashable ListAvailableSolutionStacks

instance NFData ListAvailableSolutionStacks

instance ToHeaders ListAvailableSolutionStacks where
  toHeaders = const mempty

instance ToPath ListAvailableSolutionStacks where
  toPath = const "/"

instance ToQuery ListAvailableSolutionStacks where
  toQuery =
    const
      ( mconcat
          [ "Action"
              =: ("ListAvailableSolutionStacks" :: ByteString),
            "Version" =: ("2010-12-01" :: ByteString)
          ]
      )

-- | A list of available AWS Elastic Beanstalk solution stacks.
--
--
--
-- /See:/ 'listAvailableSolutionStacksResponse' smart constructor.
data ListAvailableSolutionStacksResponse = ListAvailableSolutionStacksResponse'
  { _lassrrsSolutionStacks ::
      !( Maybe
           [Text]
       ),
    _lassrrsSolutionStackDetails ::
      !( Maybe
           [SolutionStackDescription]
       ),
    _lassrrsResponseStatus ::
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

-- | Creates a value of 'ListAvailableSolutionStacksResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lassrrsSolutionStacks' - A list of available solution stacks.
--
-- * 'lassrrsSolutionStackDetails' - A list of available solution stacks and their 'SolutionStackDescription' .
--
-- * 'lassrrsResponseStatus' - -- | The response status code.
listAvailableSolutionStacksResponse ::
  -- | 'lassrrsResponseStatus'
  Int ->
  ListAvailableSolutionStacksResponse
listAvailableSolutionStacksResponse pResponseStatus_ =
  ListAvailableSolutionStacksResponse'
    { _lassrrsSolutionStacks =
        Nothing,
      _lassrrsSolutionStackDetails = Nothing,
      _lassrrsResponseStatus =
        pResponseStatus_
    }

-- | A list of available solution stacks.
lassrrsSolutionStacks :: Lens' ListAvailableSolutionStacksResponse [Text]
lassrrsSolutionStacks = lens _lassrrsSolutionStacks (\s a -> s {_lassrrsSolutionStacks = a}) . _Default . _Coerce

-- | A list of available solution stacks and their 'SolutionStackDescription' .
lassrrsSolutionStackDetails :: Lens' ListAvailableSolutionStacksResponse [SolutionStackDescription]
lassrrsSolutionStackDetails = lens _lassrrsSolutionStackDetails (\s a -> s {_lassrrsSolutionStackDetails = a}) . _Default . _Coerce

-- | -- | The response status code.
lassrrsResponseStatus :: Lens' ListAvailableSolutionStacksResponse Int
lassrrsResponseStatus = lens _lassrrsResponseStatus (\s a -> s {_lassrrsResponseStatus = a})

instance NFData ListAvailableSolutionStacksResponse
