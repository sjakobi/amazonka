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
-- Module      : Network.AWS.ElasticBeanstalk.RetrieveEnvironmentInfo
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the compiled information from a 'RequestEnvironmentInfo' request.
--
--
-- Related Topics
--
--     * 'RequestEnvironmentInfo'
module Network.AWS.ElasticBeanstalk.RetrieveEnvironmentInfo
  ( -- * Creating a Request
    retrieveEnvironmentInfo,
    RetrieveEnvironmentInfo,

    -- * Request Lenses
    reiEnvironmentId,
    reiEnvironmentName,
    reiInfoType,

    -- * Destructuring the Response
    retrieveEnvironmentInfoResponse,
    RetrieveEnvironmentInfoResponse,

    -- * Response Lenses
    reirrsEnvironmentInfo,
    reirrsResponseStatus,
  )
where

import Network.AWS.ElasticBeanstalk.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Request to download logs retrieved with 'RequestEnvironmentInfo' .
--
--
--
-- /See:/ 'retrieveEnvironmentInfo' smart constructor.
data RetrieveEnvironmentInfo = RetrieveEnvironmentInfo'
  { _reiEnvironmentId ::
      !(Maybe Text),
    _reiEnvironmentName ::
      !(Maybe Text),
    _reiInfoType ::
      !EnvironmentInfoType
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'RetrieveEnvironmentInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'reiEnvironmentId' - The ID of the data's environment. If no such environment is found, returns an @InvalidParameterValue@ error. Condition: You must specify either this or an EnvironmentName, or both. If you do not specify either, AWS Elastic Beanstalk returns @MissingRequiredParameter@ error.
--
-- * 'reiEnvironmentName' - The name of the data's environment. If no such environment is found, returns an @InvalidParameterValue@ error.  Condition: You must specify either this or an EnvironmentId, or both. If you do not specify either, AWS Elastic Beanstalk returns @MissingRequiredParameter@ error.
--
-- * 'reiInfoType' - The type of information to retrieve.
retrieveEnvironmentInfo ::
  -- | 'reiInfoType'
  EnvironmentInfoType ->
  RetrieveEnvironmentInfo
retrieveEnvironmentInfo pInfoType_ =
  RetrieveEnvironmentInfo'
    { _reiEnvironmentId =
        Nothing,
      _reiEnvironmentName = Nothing,
      _reiInfoType = pInfoType_
    }

-- | The ID of the data's environment. If no such environment is found, returns an @InvalidParameterValue@ error. Condition: You must specify either this or an EnvironmentName, or both. If you do not specify either, AWS Elastic Beanstalk returns @MissingRequiredParameter@ error.
reiEnvironmentId :: Lens' RetrieveEnvironmentInfo (Maybe Text)
reiEnvironmentId = lens _reiEnvironmentId (\s a -> s {_reiEnvironmentId = a})

-- | The name of the data's environment. If no such environment is found, returns an @InvalidParameterValue@ error.  Condition: You must specify either this or an EnvironmentId, or both. If you do not specify either, AWS Elastic Beanstalk returns @MissingRequiredParameter@ error.
reiEnvironmentName :: Lens' RetrieveEnvironmentInfo (Maybe Text)
reiEnvironmentName = lens _reiEnvironmentName (\s a -> s {_reiEnvironmentName = a})

-- | The type of information to retrieve.
reiInfoType :: Lens' RetrieveEnvironmentInfo EnvironmentInfoType
reiInfoType = lens _reiInfoType (\s a -> s {_reiInfoType = a})

instance AWSRequest RetrieveEnvironmentInfo where
  type
    Rs RetrieveEnvironmentInfo =
      RetrieveEnvironmentInfoResponse
  request = postQuery elasticBeanstalk
  response =
    receiveXMLWrapper
      "RetrieveEnvironmentInfoResult"
      ( \s h x ->
          RetrieveEnvironmentInfoResponse'
            <$> ( x .@? "EnvironmentInfo" .!@ mempty
                    >>= may (parseXMLList "member")
                )
            <*> (pure (fromEnum s))
      )

instance Hashable RetrieveEnvironmentInfo

instance NFData RetrieveEnvironmentInfo

instance ToHeaders RetrieveEnvironmentInfo where
  toHeaders = const mempty

instance ToPath RetrieveEnvironmentInfo where
  toPath = const "/"

instance ToQuery RetrieveEnvironmentInfo where
  toQuery RetrieveEnvironmentInfo' {..} =
    mconcat
      [ "Action"
          =: ("RetrieveEnvironmentInfo" :: ByteString),
        "Version" =: ("2010-12-01" :: ByteString),
        "EnvironmentId" =: _reiEnvironmentId,
        "EnvironmentName" =: _reiEnvironmentName,
        "InfoType" =: _reiInfoType
      ]

-- | Result message containing a description of the requested environment info.
--
--
--
-- /See:/ 'retrieveEnvironmentInfoResponse' smart constructor.
data RetrieveEnvironmentInfoResponse = RetrieveEnvironmentInfoResponse'
  { _reirrsEnvironmentInfo ::
      !( Maybe
           [EnvironmentInfoDescription]
       ),
    _reirrsResponseStatus ::
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

-- | Creates a value of 'RetrieveEnvironmentInfoResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'reirrsEnvironmentInfo' - The 'EnvironmentInfoDescription' of the environment.
--
-- * 'reirrsResponseStatus' - -- | The response status code.
retrieveEnvironmentInfoResponse ::
  -- | 'reirrsResponseStatus'
  Int ->
  RetrieveEnvironmentInfoResponse
retrieveEnvironmentInfoResponse pResponseStatus_ =
  RetrieveEnvironmentInfoResponse'
    { _reirrsEnvironmentInfo =
        Nothing,
      _reirrsResponseStatus = pResponseStatus_
    }

-- | The 'EnvironmentInfoDescription' of the environment.
reirrsEnvironmentInfo :: Lens' RetrieveEnvironmentInfoResponse [EnvironmentInfoDescription]
reirrsEnvironmentInfo = lens _reirrsEnvironmentInfo (\s a -> s {_reirrsEnvironmentInfo = a}) . _Default . _Coerce

-- | -- | The response status code.
reirrsResponseStatus :: Lens' RetrieveEnvironmentInfoResponse Int
reirrsResponseStatus = lens _reirrsResponseStatus (\s a -> s {_reirrsResponseStatus = a})

instance NFData RetrieveEnvironmentInfoResponse
