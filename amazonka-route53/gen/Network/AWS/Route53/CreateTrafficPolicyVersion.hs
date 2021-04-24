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
-- Module      : Network.AWS.Route53.CreateTrafficPolicyVersion
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new version of an existing traffic policy. When you create a new version of a traffic policy, you specify the ID of the traffic policy that you want to update and a JSON-formatted document that describes the new version. You use traffic policies to create multiple DNS resource record sets for one domain name (such as example.com) or one subdomain name (such as www.example.com). You can create a maximum of 1000 versions of a traffic policy. If you reach the limit and need to create another version, you'll need to start a new traffic policy.
module Network.AWS.Route53.CreateTrafficPolicyVersion
  ( -- * Creating a Request
    createTrafficPolicyVersion,
    CreateTrafficPolicyVersion,

    -- * Request Lenses
    ctpvComment,
    ctpvId,
    ctpvDocument,

    -- * Destructuring the Response
    createTrafficPolicyVersionResponse,
    CreateTrafficPolicyVersionResponse,

    -- * Response Lenses
    ctpvrrsResponseStatus,
    ctpvrrsTrafficPolicy,
    ctpvrrsLocation,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.Route53.Types

-- | A complex type that contains information about the traffic policy that you want to create a new version for.
--
--
--
-- /See:/ 'createTrafficPolicyVersion' smart constructor.
data CreateTrafficPolicyVersion = CreateTrafficPolicyVersion'
  { _ctpvComment ::
      !(Maybe Text),
    _ctpvId :: !Text,
    _ctpvDocument ::
      !Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'CreateTrafficPolicyVersion' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ctpvComment' - The comment that you specified in the @CreateTrafficPolicyVersion@ request, if any.
--
-- * 'ctpvId' - The ID of the traffic policy for which you want to create a new version.
--
-- * 'ctpvDocument' - The definition of this version of the traffic policy, in JSON format. You specified the JSON in the @CreateTrafficPolicyVersion@ request. For more information about the JSON format, see <https://docs.aws.amazon.com/Route53/latest/APIReference/API_CreateTrafficPolicy.html CreateTrafficPolicy> .
createTrafficPolicyVersion ::
  -- | 'ctpvId'
  Text ->
  -- | 'ctpvDocument'
  Text ->
  CreateTrafficPolicyVersion
createTrafficPolicyVersion pId_ pDocument_ =
  CreateTrafficPolicyVersion'
    { _ctpvComment = Nothing,
      _ctpvId = pId_,
      _ctpvDocument = pDocument_
    }

-- | The comment that you specified in the @CreateTrafficPolicyVersion@ request, if any.
ctpvComment :: Lens' CreateTrafficPolicyVersion (Maybe Text)
ctpvComment = lens _ctpvComment (\s a -> s {_ctpvComment = a})

-- | The ID of the traffic policy for which you want to create a new version.
ctpvId :: Lens' CreateTrafficPolicyVersion Text
ctpvId = lens _ctpvId (\s a -> s {_ctpvId = a})

-- | The definition of this version of the traffic policy, in JSON format. You specified the JSON in the @CreateTrafficPolicyVersion@ request. For more information about the JSON format, see <https://docs.aws.amazon.com/Route53/latest/APIReference/API_CreateTrafficPolicy.html CreateTrafficPolicy> .
ctpvDocument :: Lens' CreateTrafficPolicyVersion Text
ctpvDocument = lens _ctpvDocument (\s a -> s {_ctpvDocument = a})

instance AWSRequest CreateTrafficPolicyVersion where
  type
    Rs CreateTrafficPolicyVersion =
      CreateTrafficPolicyVersionResponse
  request = postXML route53
  response =
    receiveXML
      ( \s h x ->
          CreateTrafficPolicyVersionResponse'
            <$> (pure (fromEnum s))
            <*> (x .@ "TrafficPolicy")
            <*> (h .# "Location")
      )

instance Hashable CreateTrafficPolicyVersion

instance NFData CreateTrafficPolicyVersion

instance ToElement CreateTrafficPolicyVersion where
  toElement =
    mkElement
      "{https://route53.amazonaws.com/doc/2013-04-01/}CreateTrafficPolicyVersionRequest"

instance ToHeaders CreateTrafficPolicyVersion where
  toHeaders = const mempty

instance ToPath CreateTrafficPolicyVersion where
  toPath CreateTrafficPolicyVersion' {..} =
    mconcat
      ["/2013-04-01/trafficpolicy/", toBS _ctpvId]

instance ToQuery CreateTrafficPolicyVersion where
  toQuery = const mempty

instance ToXML CreateTrafficPolicyVersion where
  toXML CreateTrafficPolicyVersion' {..} =
    mconcat
      [ "Comment" @= _ctpvComment,
        "Document" @= _ctpvDocument
      ]

-- | A complex type that contains the response information for the @CreateTrafficPolicyVersion@ request.
--
--
--
-- /See:/ 'createTrafficPolicyVersionResponse' smart constructor.
data CreateTrafficPolicyVersionResponse = CreateTrafficPolicyVersionResponse'
  { _ctpvrrsResponseStatus ::
      !Int,
    _ctpvrrsTrafficPolicy ::
      !TrafficPolicy,
    _ctpvrrsLocation ::
      !Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'CreateTrafficPolicyVersionResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ctpvrrsResponseStatus' - -- | The response status code.
--
-- * 'ctpvrrsTrafficPolicy' - A complex type that contains settings for the new version of the traffic policy.
--
-- * 'ctpvrrsLocation' - A unique URL that represents a new traffic policy version.
createTrafficPolicyVersionResponse ::
  -- | 'ctpvrrsResponseStatus'
  Int ->
  -- | 'ctpvrrsTrafficPolicy'
  TrafficPolicy ->
  -- | 'ctpvrrsLocation'
  Text ->
  CreateTrafficPolicyVersionResponse
createTrafficPolicyVersionResponse
  pResponseStatus_
  pTrafficPolicy_
  pLocation_ =
    CreateTrafficPolicyVersionResponse'
      { _ctpvrrsResponseStatus =
          pResponseStatus_,
        _ctpvrrsTrafficPolicy = pTrafficPolicy_,
        _ctpvrrsLocation = pLocation_
      }

-- | -- | The response status code.
ctpvrrsResponseStatus :: Lens' CreateTrafficPolicyVersionResponse Int
ctpvrrsResponseStatus = lens _ctpvrrsResponseStatus (\s a -> s {_ctpvrrsResponseStatus = a})

-- | A complex type that contains settings for the new version of the traffic policy.
ctpvrrsTrafficPolicy :: Lens' CreateTrafficPolicyVersionResponse TrafficPolicy
ctpvrrsTrafficPolicy = lens _ctpvrrsTrafficPolicy (\s a -> s {_ctpvrrsTrafficPolicy = a})

-- | A unique URL that represents a new traffic policy version.
ctpvrrsLocation :: Lens' CreateTrafficPolicyVersionResponse Text
ctpvrrsLocation = lens _ctpvrrsLocation (\s a -> s {_ctpvrrsLocation = a})

instance NFData CreateTrafficPolicyVersionResponse
