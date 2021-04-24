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
-- Module      : Network.AWS.IoT.DescribeThing
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets information about the specified thing.
module Network.AWS.IoT.DescribeThing
  ( -- * Creating a Request
    describeThing,
    DescribeThing,

    -- * Request Lenses
    desThingName,

    -- * Destructuring the Response
    describeThingResponse,
    DescribeThingResponse,

    -- * Response Lenses
    dtrtrsThingARN,
    dtrtrsThingId,
    dtrtrsThingName,
    dtrtrsVersion,
    dtrtrsAttributes,
    dtrtrsDefaultClientId,
    dtrtrsBillingGroupName,
    dtrtrsThingTypeName,
    dtrtrsResponseStatus,
  )
where

import Network.AWS.IoT.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | The input for the DescribeThing operation.
--
--
--
-- /See:/ 'describeThing' smart constructor.
newtype DescribeThing = DescribeThing'
  { _desThingName ::
      Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DescribeThing' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'desThingName' - The name of the thing.
describeThing ::
  -- | 'desThingName'
  Text ->
  DescribeThing
describeThing pThingName_ =
  DescribeThing' {_desThingName = pThingName_}

-- | The name of the thing.
desThingName :: Lens' DescribeThing Text
desThingName = lens _desThingName (\s a -> s {_desThingName = a})

instance AWSRequest DescribeThing where
  type Rs DescribeThing = DescribeThingResponse
  request = get ioT
  response =
    receiveJSON
      ( \s h x ->
          DescribeThingResponse'
            <$> (x .?> "thingArn")
            <*> (x .?> "thingId")
            <*> (x .?> "thingName")
            <*> (x .?> "version")
            <*> (x .?> "attributes" .!@ mempty)
            <*> (x .?> "defaultClientId")
            <*> (x .?> "billingGroupName")
            <*> (x .?> "thingTypeName")
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeThing

instance NFData DescribeThing

instance ToHeaders DescribeThing where
  toHeaders = const mempty

instance ToPath DescribeThing where
  toPath DescribeThing' {..} =
    mconcat ["/things/", toBS _desThingName]

instance ToQuery DescribeThing where
  toQuery = const mempty

-- | The output from the DescribeThing operation.
--
--
--
-- /See:/ 'describeThingResponse' smart constructor.
data DescribeThingResponse = DescribeThingResponse'
  { _dtrtrsThingARN ::
      !(Maybe Text),
    _dtrtrsThingId ::
      !(Maybe Text),
    _dtrtrsThingName ::
      !(Maybe Text),
    _dtrtrsVersion ::
      !(Maybe Integer),
    _dtrtrsAttributes ::
      !(Maybe (Map Text Text)),
    _dtrtrsDefaultClientId ::
      !(Maybe Text),
    _dtrtrsBillingGroupName ::
      !(Maybe Text),
    _dtrtrsThingTypeName ::
      !(Maybe Text),
    _dtrtrsResponseStatus ::
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

-- | Creates a value of 'DescribeThingResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dtrtrsThingARN' - The ARN of the thing to describe.
--
-- * 'dtrtrsThingId' - The ID of the thing to describe.
--
-- * 'dtrtrsThingName' - The name of the thing.
--
-- * 'dtrtrsVersion' - The current version of the thing record in the registry.
--
-- * 'dtrtrsAttributes' - The thing attributes.
--
-- * 'dtrtrsDefaultClientId' - The default MQTT client ID. For a typical device, the thing name is also used as the default MQTT client ID. Although we don’t require a mapping between a thing's registry name and its use of MQTT client IDs, certificates, or shadow state, we recommend that you choose a thing name and use it as the MQTT client ID for the registry and the Device Shadow service. This lets you better organize your AWS IoT fleet without removing the flexibility of the underlying device certificate model or shadows.
--
-- * 'dtrtrsBillingGroupName' - The name of the billing group the thing belongs to.
--
-- * 'dtrtrsThingTypeName' - The thing type name.
--
-- * 'dtrtrsResponseStatus' - -- | The response status code.
describeThingResponse ::
  -- | 'dtrtrsResponseStatus'
  Int ->
  DescribeThingResponse
describeThingResponse pResponseStatus_ =
  DescribeThingResponse'
    { _dtrtrsThingARN = Nothing,
      _dtrtrsThingId = Nothing,
      _dtrtrsThingName = Nothing,
      _dtrtrsVersion = Nothing,
      _dtrtrsAttributes = Nothing,
      _dtrtrsDefaultClientId = Nothing,
      _dtrtrsBillingGroupName = Nothing,
      _dtrtrsThingTypeName = Nothing,
      _dtrtrsResponseStatus = pResponseStatus_
    }

-- | The ARN of the thing to describe.
dtrtrsThingARN :: Lens' DescribeThingResponse (Maybe Text)
dtrtrsThingARN = lens _dtrtrsThingARN (\s a -> s {_dtrtrsThingARN = a})

-- | The ID of the thing to describe.
dtrtrsThingId :: Lens' DescribeThingResponse (Maybe Text)
dtrtrsThingId = lens _dtrtrsThingId (\s a -> s {_dtrtrsThingId = a})

-- | The name of the thing.
dtrtrsThingName :: Lens' DescribeThingResponse (Maybe Text)
dtrtrsThingName = lens _dtrtrsThingName (\s a -> s {_dtrtrsThingName = a})

-- | The current version of the thing record in the registry.
dtrtrsVersion :: Lens' DescribeThingResponse (Maybe Integer)
dtrtrsVersion = lens _dtrtrsVersion (\s a -> s {_dtrtrsVersion = a})

-- | The thing attributes.
dtrtrsAttributes :: Lens' DescribeThingResponse (HashMap Text Text)
dtrtrsAttributes = lens _dtrtrsAttributes (\s a -> s {_dtrtrsAttributes = a}) . _Default . _Map

-- | The default MQTT client ID. For a typical device, the thing name is also used as the default MQTT client ID. Although we don’t require a mapping between a thing's registry name and its use of MQTT client IDs, certificates, or shadow state, we recommend that you choose a thing name and use it as the MQTT client ID for the registry and the Device Shadow service. This lets you better organize your AWS IoT fleet without removing the flexibility of the underlying device certificate model or shadows.
dtrtrsDefaultClientId :: Lens' DescribeThingResponse (Maybe Text)
dtrtrsDefaultClientId = lens _dtrtrsDefaultClientId (\s a -> s {_dtrtrsDefaultClientId = a})

-- | The name of the billing group the thing belongs to.
dtrtrsBillingGroupName :: Lens' DescribeThingResponse (Maybe Text)
dtrtrsBillingGroupName = lens _dtrtrsBillingGroupName (\s a -> s {_dtrtrsBillingGroupName = a})

-- | The thing type name.
dtrtrsThingTypeName :: Lens' DescribeThingResponse (Maybe Text)
dtrtrsThingTypeName = lens _dtrtrsThingTypeName (\s a -> s {_dtrtrsThingTypeName = a})

-- | -- | The response status code.
dtrtrsResponseStatus :: Lens' DescribeThingResponse Int
dtrtrsResponseStatus = lens _dtrtrsResponseStatus (\s a -> s {_dtrtrsResponseStatus = a})

instance NFData DescribeThingResponse
