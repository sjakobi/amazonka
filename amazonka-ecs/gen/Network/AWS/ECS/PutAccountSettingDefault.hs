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
-- Module      : Network.AWS.ECS.PutAccountSettingDefault
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Modifies an account setting for all IAM users on an account for whom no individual account setting has been specified. Account settings are set on a per-Region basis.
module Network.AWS.ECS.PutAccountSettingDefault
  ( -- * Creating a Request
    putAccountSettingDefault,
    PutAccountSettingDefault,

    -- * Request Lenses
    pasdName,
    pasdValue,

    -- * Destructuring the Response
    putAccountSettingDefaultResponse,
    PutAccountSettingDefaultResponse,

    -- * Response Lenses
    pasdrrsSetting,
    pasdrrsResponseStatus,
  )
where

import Network.AWS.ECS.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'putAccountSettingDefault' smart constructor.
data PutAccountSettingDefault = PutAccountSettingDefault'
  { _pasdName ::
      !SettingName,
    _pasdValue :: !Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'PutAccountSettingDefault' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pasdName' - The resource name for which to modify the account setting. If @serviceLongArnFormat@ is specified, the ARN for your Amazon ECS services is affected. If @taskLongArnFormat@ is specified, the ARN and resource ID for your Amazon ECS tasks is affected. If @containerInstanceLongArnFormat@ is specified, the ARN and resource ID for your Amazon ECS container instances is affected. If @awsvpcTrunking@ is specified, the ENI limit for your Amazon ECS container instances is affected. If @containerInsights@ is specified, the default setting for CloudWatch Container Insights for your clusters is affected.
--
-- * 'pasdValue' - The account setting value for the specified principal ARN. Accepted values are @enabled@ and @disabled@ .
putAccountSettingDefault ::
  -- | 'pasdName'
  SettingName ->
  -- | 'pasdValue'
  Text ->
  PutAccountSettingDefault
putAccountSettingDefault pName_ pValue_ =
  PutAccountSettingDefault'
    { _pasdName = pName_,
      _pasdValue = pValue_
    }

-- | The resource name for which to modify the account setting. If @serviceLongArnFormat@ is specified, the ARN for your Amazon ECS services is affected. If @taskLongArnFormat@ is specified, the ARN and resource ID for your Amazon ECS tasks is affected. If @containerInstanceLongArnFormat@ is specified, the ARN and resource ID for your Amazon ECS container instances is affected. If @awsvpcTrunking@ is specified, the ENI limit for your Amazon ECS container instances is affected. If @containerInsights@ is specified, the default setting for CloudWatch Container Insights for your clusters is affected.
pasdName :: Lens' PutAccountSettingDefault SettingName
pasdName = lens _pasdName (\s a -> s {_pasdName = a})

-- | The account setting value for the specified principal ARN. Accepted values are @enabled@ and @disabled@ .
pasdValue :: Lens' PutAccountSettingDefault Text
pasdValue = lens _pasdValue (\s a -> s {_pasdValue = a})

instance AWSRequest PutAccountSettingDefault where
  type
    Rs PutAccountSettingDefault =
      PutAccountSettingDefaultResponse
  request = postJSON ecs
  response =
    receiveJSON
      ( \s h x ->
          PutAccountSettingDefaultResponse'
            <$> (x .?> "setting") <*> (pure (fromEnum s))
      )

instance Hashable PutAccountSettingDefault

instance NFData PutAccountSettingDefault

instance ToHeaders PutAccountSettingDefault where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AmazonEC2ContainerServiceV20141113.PutAccountSettingDefault" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON PutAccountSettingDefault where
  toJSON PutAccountSettingDefault' {..} =
    object
      ( catMaybes
          [ Just ("name" .= _pasdName),
            Just ("value" .= _pasdValue)
          ]
      )

instance ToPath PutAccountSettingDefault where
  toPath = const "/"

instance ToQuery PutAccountSettingDefault where
  toQuery = const mempty

-- | /See:/ 'putAccountSettingDefaultResponse' smart constructor.
data PutAccountSettingDefaultResponse = PutAccountSettingDefaultResponse'
  { _pasdrrsSetting ::
      !( Maybe
           Setting
       ),
    _pasdrrsResponseStatus ::
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

-- | Creates a value of 'PutAccountSettingDefaultResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pasdrrsSetting' - Undocumented member.
--
-- * 'pasdrrsResponseStatus' - -- | The response status code.
putAccountSettingDefaultResponse ::
  -- | 'pasdrrsResponseStatus'
  Int ->
  PutAccountSettingDefaultResponse
putAccountSettingDefaultResponse pResponseStatus_ =
  PutAccountSettingDefaultResponse'
    { _pasdrrsSetting =
        Nothing,
      _pasdrrsResponseStatus = pResponseStatus_
    }

-- | Undocumented member.
pasdrrsSetting :: Lens' PutAccountSettingDefaultResponse (Maybe Setting)
pasdrrsSetting = lens _pasdrrsSetting (\s a -> s {_pasdrrsSetting = a})

-- | -- | The response status code.
pasdrrsResponseStatus :: Lens' PutAccountSettingDefaultResponse Int
pasdrrsResponseStatus = lens _pasdrrsResponseStatus (\s a -> s {_pasdrrsResponseStatus = a})

instance NFData PutAccountSettingDefaultResponse
