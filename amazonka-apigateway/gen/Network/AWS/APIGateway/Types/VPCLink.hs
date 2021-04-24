{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.APIGateway.Types.VPCLink
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.APIGateway.Types.VPCLink where

import Network.AWS.APIGateway.Types.VPCLinkStatus
import Network.AWS.Lens
import Network.AWS.Prelude

-- | An API Gateway VPC link for a 'RestApi' to access resources in an Amazon Virtual Private Cloud (VPC).
--
--
-- To enable access to a resource in an Amazon Virtual Private Cloud through Amazon API Gateway, you, as an API developer, create a 'VpcLink' resource targeted for one or more network load balancers of the VPC and then integrate an API method with a private integration that uses the 'VpcLink' . The private integration has an integration type of @HTTP@ or @HTTP_PROXY@ and has a connection type of @VPC_LINK@ . The integration uses the @connectionId@ property to identify the 'VpcLink' used.
--
--
--
--
-- /See:/ 'vpcLink' smart constructor.
data VPCLink = VPCLink'
  { _vlStatusMessage ::
      !(Maybe Text),
    _vlStatus :: !(Maybe VPCLinkStatus),
    _vlId :: !(Maybe Text),
    _vlName :: !(Maybe Text),
    _vlTargetARNs :: !(Maybe [Text]),
    _vlTags :: !(Maybe (Map Text Text)),
    _vlDescription :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'VPCLink' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vlStatusMessage' - A description about the VPC link status.
--
-- * 'vlStatus' - The status of the VPC link. The valid values are @AVAILABLE@ , @PENDING@ , @DELETING@ , or @FAILED@ . Deploying an API will wait if the status is @PENDING@ and will fail if the status is @DELETING@ .
--
-- * 'vlId' - The identifier of the 'VpcLink' . It is used in an 'Integration' to reference this 'VpcLink' .
--
-- * 'vlName' - The name used to label and identify the VPC link.
--
-- * 'vlTargetARNs' - The ARN of the network load balancer of the VPC targeted by the VPC link. The network load balancer must be owned by the same AWS account of the API owner.
--
-- * 'vlTags' - The collection of tags. Each tag element is associated with a given resource.
--
-- * 'vlDescription' - The description of the VPC link.
vpcLink ::
  VPCLink
vpcLink =
  VPCLink'
    { _vlStatusMessage = Nothing,
      _vlStatus = Nothing,
      _vlId = Nothing,
      _vlName = Nothing,
      _vlTargetARNs = Nothing,
      _vlTags = Nothing,
      _vlDescription = Nothing
    }

-- | A description about the VPC link status.
vlStatusMessage :: Lens' VPCLink (Maybe Text)
vlStatusMessage = lens _vlStatusMessage (\s a -> s {_vlStatusMessage = a})

-- | The status of the VPC link. The valid values are @AVAILABLE@ , @PENDING@ , @DELETING@ , or @FAILED@ . Deploying an API will wait if the status is @PENDING@ and will fail if the status is @DELETING@ .
vlStatus :: Lens' VPCLink (Maybe VPCLinkStatus)
vlStatus = lens _vlStatus (\s a -> s {_vlStatus = a})

-- | The identifier of the 'VpcLink' . It is used in an 'Integration' to reference this 'VpcLink' .
vlId :: Lens' VPCLink (Maybe Text)
vlId = lens _vlId (\s a -> s {_vlId = a})

-- | The name used to label and identify the VPC link.
vlName :: Lens' VPCLink (Maybe Text)
vlName = lens _vlName (\s a -> s {_vlName = a})

-- | The ARN of the network load balancer of the VPC targeted by the VPC link. The network load balancer must be owned by the same AWS account of the API owner.
vlTargetARNs :: Lens' VPCLink [Text]
vlTargetARNs = lens _vlTargetARNs (\s a -> s {_vlTargetARNs = a}) . _Default . _Coerce

-- | The collection of tags. Each tag element is associated with a given resource.
vlTags :: Lens' VPCLink (HashMap Text Text)
vlTags = lens _vlTags (\s a -> s {_vlTags = a}) . _Default . _Map

-- | The description of the VPC link.
vlDescription :: Lens' VPCLink (Maybe Text)
vlDescription = lens _vlDescription (\s a -> s {_vlDescription = a})

instance FromJSON VPCLink where
  parseJSON =
    withObject
      "VPCLink"
      ( \x ->
          VPCLink'
            <$> (x .:? "statusMessage")
            <*> (x .:? "status")
            <*> (x .:? "id")
            <*> (x .:? "name")
            <*> (x .:? "targetArns" .!= mempty)
            <*> (x .:? "tags" .!= mempty)
            <*> (x .:? "description")
      )

instance Hashable VPCLink

instance NFData VPCLink
