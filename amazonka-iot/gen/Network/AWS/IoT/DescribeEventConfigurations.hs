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
-- Module      : Network.AWS.IoT.DescribeEventConfigurations
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes event configurations.
module Network.AWS.IoT.DescribeEventConfigurations
  ( -- * Creating a Request
    describeEventConfigurations,
    DescribeEventConfigurations,

    -- * Destructuring the Response
    describeEventConfigurationsResponse,
    DescribeEventConfigurationsResponse,

    -- * Response Lenses
    decrrsLastModifiedDate,
    decrrsCreationDate,
    decrrsEventConfigurations,
    decrrsResponseStatus,
  )
where

import Network.AWS.IoT.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describeEventConfigurations' smart constructor.
data DescribeEventConfigurations = DescribeEventConfigurations'
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DescribeEventConfigurations' with the minimum fields required to make a request.
describeEventConfigurations ::
  DescribeEventConfigurations
describeEventConfigurations =
  DescribeEventConfigurations'

instance AWSRequest DescribeEventConfigurations where
  type
    Rs DescribeEventConfigurations =
      DescribeEventConfigurationsResponse
  request = get ioT
  response =
    receiveJSON
      ( \s h x ->
          DescribeEventConfigurationsResponse'
            <$> (x .?> "lastModifiedDate")
            <*> (x .?> "creationDate")
            <*> (x .?> "eventConfigurations" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeEventConfigurations

instance NFData DescribeEventConfigurations

instance ToHeaders DescribeEventConfigurations where
  toHeaders = const mempty

instance ToPath DescribeEventConfigurations where
  toPath = const "/event-configurations"

instance ToQuery DescribeEventConfigurations where
  toQuery = const mempty

-- | /See:/ 'describeEventConfigurationsResponse' smart constructor.
data DescribeEventConfigurationsResponse = DescribeEventConfigurationsResponse'
  { _decrrsLastModifiedDate ::
      !( Maybe
           POSIX
       ),
    _decrrsCreationDate ::
      !( Maybe
           POSIX
       ),
    _decrrsEventConfigurations ::
      !( Maybe
           ( Map
               EventType
               Configuration
           )
       ),
    _decrrsResponseStatus ::
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

-- | Creates a value of 'DescribeEventConfigurationsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'decrrsLastModifiedDate' - The date the event configurations were last modified.
--
-- * 'decrrsCreationDate' - The creation date of the event configuration.
--
-- * 'decrrsEventConfigurations' - The event configurations.
--
-- * 'decrrsResponseStatus' - -- | The response status code.
describeEventConfigurationsResponse ::
  -- | 'decrrsResponseStatus'
  Int ->
  DescribeEventConfigurationsResponse
describeEventConfigurationsResponse pResponseStatus_ =
  DescribeEventConfigurationsResponse'
    { _decrrsLastModifiedDate =
        Nothing,
      _decrrsCreationDate = Nothing,
      _decrrsEventConfigurations = Nothing,
      _decrrsResponseStatus =
        pResponseStatus_
    }

-- | The date the event configurations were last modified.
decrrsLastModifiedDate :: Lens' DescribeEventConfigurationsResponse (Maybe UTCTime)
decrrsLastModifiedDate = lens _decrrsLastModifiedDate (\s a -> s {_decrrsLastModifiedDate = a}) . mapping _Time

-- | The creation date of the event configuration.
decrrsCreationDate :: Lens' DescribeEventConfigurationsResponse (Maybe UTCTime)
decrrsCreationDate = lens _decrrsCreationDate (\s a -> s {_decrrsCreationDate = a}) . mapping _Time

-- | The event configurations.
decrrsEventConfigurations :: Lens' DescribeEventConfigurationsResponse (HashMap EventType Configuration)
decrrsEventConfigurations = lens _decrrsEventConfigurations (\s a -> s {_decrrsEventConfigurations = a}) . _Default . _Map

-- | -- | The response status code.
decrrsResponseStatus :: Lens' DescribeEventConfigurationsResponse Int
decrrsResponseStatus = lens _decrrsResponseStatus (\s a -> s {_decrrsResponseStatus = a})

instance NFData DescribeEventConfigurationsResponse
