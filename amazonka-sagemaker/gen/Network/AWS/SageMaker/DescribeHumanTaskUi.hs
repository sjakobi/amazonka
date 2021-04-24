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
-- Module      : Network.AWS.SageMaker.DescribeHumanTaskUi
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns information about the requested human task user interface (worker task template).
module Network.AWS.SageMaker.DescribeHumanTaskUi
  ( -- * Creating a Request
    describeHumanTaskUi,
    DescribeHumanTaskUi,

    -- * Request Lenses
    dHumanTaskUiName,

    -- * Destructuring the Response
    describeHumanTaskUiResponse,
    DescribeHumanTaskUiResponse,

    -- * Response Lenses
    dhturhrsHumanTaskUiStatus,
    dhturhrsResponseStatus,
    dhturhrsHumanTaskUiARN,
    dhturhrsHumanTaskUiName,
    dhturhrsCreationTime,
    dhturhrsUiTemplate,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SageMaker.Types

-- | /See:/ 'describeHumanTaskUi' smart constructor.
newtype DescribeHumanTaskUi = DescribeHumanTaskUi'
  { _dHumanTaskUiName ::
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

-- | Creates a value of 'DescribeHumanTaskUi' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dHumanTaskUiName' - The name of the human task user interface (worker task template) you want information about.
describeHumanTaskUi ::
  -- | 'dHumanTaskUiName'
  Text ->
  DescribeHumanTaskUi
describeHumanTaskUi pHumanTaskUiName_ =
  DescribeHumanTaskUi'
    { _dHumanTaskUiName =
        pHumanTaskUiName_
    }

-- | The name of the human task user interface (worker task template) you want information about.
dHumanTaskUiName :: Lens' DescribeHumanTaskUi Text
dHumanTaskUiName = lens _dHumanTaskUiName (\s a -> s {_dHumanTaskUiName = a})

instance AWSRequest DescribeHumanTaskUi where
  type
    Rs DescribeHumanTaskUi =
      DescribeHumanTaskUiResponse
  request = postJSON sageMaker
  response =
    receiveJSON
      ( \s h x ->
          DescribeHumanTaskUiResponse'
            <$> (x .?> "HumanTaskUiStatus")
            <*> (pure (fromEnum s))
            <*> (x .:> "HumanTaskUiArn")
            <*> (x .:> "HumanTaskUiName")
            <*> (x .:> "CreationTime")
            <*> (x .:> "UiTemplate")
      )

instance Hashable DescribeHumanTaskUi

instance NFData DescribeHumanTaskUi

instance ToHeaders DescribeHumanTaskUi where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("SageMaker.DescribeHumanTaskUi" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DescribeHumanTaskUi where
  toJSON DescribeHumanTaskUi' {..} =
    object
      ( catMaybes
          [Just ("HumanTaskUiName" .= _dHumanTaskUiName)]
      )

instance ToPath DescribeHumanTaskUi where
  toPath = const "/"

instance ToQuery DescribeHumanTaskUi where
  toQuery = const mempty

-- | /See:/ 'describeHumanTaskUiResponse' smart constructor.
data DescribeHumanTaskUiResponse = DescribeHumanTaskUiResponse'
  { _dhturhrsHumanTaskUiStatus ::
      !( Maybe
           HumanTaskUiStatus
       ),
    _dhturhrsResponseStatus ::
      !Int,
    _dhturhrsHumanTaskUiARN ::
      !Text,
    _dhturhrsHumanTaskUiName ::
      !Text,
    _dhturhrsCreationTime ::
      !POSIX,
    _dhturhrsUiTemplate ::
      !UiTemplateInfo
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DescribeHumanTaskUiResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dhturhrsHumanTaskUiStatus' - The status of the human task user interface (worker task template). Valid values are listed below.
--
-- * 'dhturhrsResponseStatus' - -- | The response status code.
--
-- * 'dhturhrsHumanTaskUiARN' - The Amazon Resource Name (ARN) of the human task user interface (worker task template).
--
-- * 'dhturhrsHumanTaskUiName' - The name of the human task user interface (worker task template).
--
-- * 'dhturhrsCreationTime' - The timestamp when the human task user interface was created.
--
-- * 'dhturhrsUiTemplate' - Undocumented member.
describeHumanTaskUiResponse ::
  -- | 'dhturhrsResponseStatus'
  Int ->
  -- | 'dhturhrsHumanTaskUiARN'
  Text ->
  -- | 'dhturhrsHumanTaskUiName'
  Text ->
  -- | 'dhturhrsCreationTime'
  UTCTime ->
  -- | 'dhturhrsUiTemplate'
  UiTemplateInfo ->
  DescribeHumanTaskUiResponse
describeHumanTaskUiResponse
  pResponseStatus_
  pHumanTaskUiARN_
  pHumanTaskUiName_
  pCreationTime_
  pUiTemplate_ =
    DescribeHumanTaskUiResponse'
      { _dhturhrsHumanTaskUiStatus =
          Nothing,
        _dhturhrsResponseStatus = pResponseStatus_,
        _dhturhrsHumanTaskUiARN = pHumanTaskUiARN_,
        _dhturhrsHumanTaskUiName = pHumanTaskUiName_,
        _dhturhrsCreationTime = _Time # pCreationTime_,
        _dhturhrsUiTemplate = pUiTemplate_
      }

-- | The status of the human task user interface (worker task template). Valid values are listed below.
dhturhrsHumanTaskUiStatus :: Lens' DescribeHumanTaskUiResponse (Maybe HumanTaskUiStatus)
dhturhrsHumanTaskUiStatus = lens _dhturhrsHumanTaskUiStatus (\s a -> s {_dhturhrsHumanTaskUiStatus = a})

-- | -- | The response status code.
dhturhrsResponseStatus :: Lens' DescribeHumanTaskUiResponse Int
dhturhrsResponseStatus = lens _dhturhrsResponseStatus (\s a -> s {_dhturhrsResponseStatus = a})

-- | The Amazon Resource Name (ARN) of the human task user interface (worker task template).
dhturhrsHumanTaskUiARN :: Lens' DescribeHumanTaskUiResponse Text
dhturhrsHumanTaskUiARN = lens _dhturhrsHumanTaskUiARN (\s a -> s {_dhturhrsHumanTaskUiARN = a})

-- | The name of the human task user interface (worker task template).
dhturhrsHumanTaskUiName :: Lens' DescribeHumanTaskUiResponse Text
dhturhrsHumanTaskUiName = lens _dhturhrsHumanTaskUiName (\s a -> s {_dhturhrsHumanTaskUiName = a})

-- | The timestamp when the human task user interface was created.
dhturhrsCreationTime :: Lens' DescribeHumanTaskUiResponse UTCTime
dhturhrsCreationTime = lens _dhturhrsCreationTime (\s a -> s {_dhturhrsCreationTime = a}) . _Time

-- | Undocumented member.
dhturhrsUiTemplate :: Lens' DescribeHumanTaskUiResponse UiTemplateInfo
dhturhrsUiTemplate = lens _dhturhrsUiTemplate (\s a -> s {_dhturhrsUiTemplate = a})

instance NFData DescribeHumanTaskUiResponse
