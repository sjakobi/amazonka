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
-- Module      : Network.AWS.IoT.GetEffectivePolicies
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a list of the policies that have an effect on the authorization behavior of the specified device when it connects to the AWS IoT device gateway.
module Network.AWS.IoT.GetEffectivePolicies
  ( -- * Creating a Request
    getEffectivePolicies,
    GetEffectivePolicies,

    -- * Request Lenses
    gepThingName,
    gepCognitoIdentityPoolId,
    gepPrincipal,

    -- * Destructuring the Response
    getEffectivePoliciesResponse,
    GetEffectivePoliciesResponse,

    -- * Response Lenses
    geprrsEffectivePolicies,
    geprrsResponseStatus,
  )
where

import Network.AWS.IoT.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'getEffectivePolicies' smart constructor.
data GetEffectivePolicies = GetEffectivePolicies'
  { _gepThingName ::
      !(Maybe Text),
    _gepCognitoIdentityPoolId ::
      !(Maybe Text),
    _gepPrincipal ::
      !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetEffectivePolicies' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gepThingName' - The thing name.
--
-- * 'gepCognitoIdentityPoolId' - The Cognito identity pool ID.
--
-- * 'gepPrincipal' - The principal. Valid principals are CertificateArn (arn:aws:iot:/region/ :/accountId/ :cert//certificateId/ ), thingGroupArn (arn:aws:iot:/region/ :/accountId/ :thinggroup//groupName/ ) and CognitoId (/region/ :/id/ ).
getEffectivePolicies ::
  GetEffectivePolicies
getEffectivePolicies =
  GetEffectivePolicies'
    { _gepThingName = Nothing,
      _gepCognitoIdentityPoolId = Nothing,
      _gepPrincipal = Nothing
    }

-- | The thing name.
gepThingName :: Lens' GetEffectivePolicies (Maybe Text)
gepThingName = lens _gepThingName (\s a -> s {_gepThingName = a})

-- | The Cognito identity pool ID.
gepCognitoIdentityPoolId :: Lens' GetEffectivePolicies (Maybe Text)
gepCognitoIdentityPoolId = lens _gepCognitoIdentityPoolId (\s a -> s {_gepCognitoIdentityPoolId = a})

-- | The principal. Valid principals are CertificateArn (arn:aws:iot:/region/ :/accountId/ :cert//certificateId/ ), thingGroupArn (arn:aws:iot:/region/ :/accountId/ :thinggroup//groupName/ ) and CognitoId (/region/ :/id/ ).
gepPrincipal :: Lens' GetEffectivePolicies (Maybe Text)
gepPrincipal = lens _gepPrincipal (\s a -> s {_gepPrincipal = a})

instance AWSRequest GetEffectivePolicies where
  type
    Rs GetEffectivePolicies =
      GetEffectivePoliciesResponse
  request = postJSON ioT
  response =
    receiveJSON
      ( \s h x ->
          GetEffectivePoliciesResponse'
            <$> (x .?> "effectivePolicies" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable GetEffectivePolicies

instance NFData GetEffectivePolicies

instance ToHeaders GetEffectivePolicies where
  toHeaders = const mempty

instance ToJSON GetEffectivePolicies where
  toJSON GetEffectivePolicies' {..} =
    object
      ( catMaybes
          [ ("cognitoIdentityPoolId" .=)
              <$> _gepCognitoIdentityPoolId,
            ("principal" .=) <$> _gepPrincipal
          ]
      )

instance ToPath GetEffectivePolicies where
  toPath = const "/effective-policies"

instance ToQuery GetEffectivePolicies where
  toQuery GetEffectivePolicies' {..} =
    mconcat ["thingName" =: _gepThingName]

-- | /See:/ 'getEffectivePoliciesResponse' smart constructor.
data GetEffectivePoliciesResponse = GetEffectivePoliciesResponse'
  { _geprrsEffectivePolicies ::
      !( Maybe
           [EffectivePolicy]
       ),
    _geprrsResponseStatus ::
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

-- | Creates a value of 'GetEffectivePoliciesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'geprrsEffectivePolicies' - The effective policies.
--
-- * 'geprrsResponseStatus' - -- | The response status code.
getEffectivePoliciesResponse ::
  -- | 'geprrsResponseStatus'
  Int ->
  GetEffectivePoliciesResponse
getEffectivePoliciesResponse pResponseStatus_ =
  GetEffectivePoliciesResponse'
    { _geprrsEffectivePolicies =
        Nothing,
      _geprrsResponseStatus = pResponseStatus_
    }

-- | The effective policies.
geprrsEffectivePolicies :: Lens' GetEffectivePoliciesResponse [EffectivePolicy]
geprrsEffectivePolicies = lens _geprrsEffectivePolicies (\s a -> s {_geprrsEffectivePolicies = a}) . _Default . _Coerce

-- | -- | The response status code.
geprrsResponseStatus :: Lens' GetEffectivePoliciesResponse Int
geprrsResponseStatus = lens _geprrsResponseStatus (\s a -> s {_geprrsResponseStatus = a})

instance NFData GetEffectivePoliciesResponse
