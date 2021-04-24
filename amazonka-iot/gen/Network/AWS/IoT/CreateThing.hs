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
-- Module      : Network.AWS.IoT.CreateThing
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a thing record in the registry. If this call is made multiple times using the same thing name and configuration, the call will succeed. If this call is made with the same thing name but different configuration a @ResourceAlreadyExistsException@ is thrown.
module Network.AWS.IoT.CreateThing
  ( -- * Creating a Request
    createThing,
    CreateThing,

    -- * Request Lenses
    ctBillingGroupName,
    ctThingTypeName,
    ctAttributePayload,
    ctThingName,

    -- * Destructuring the Response
    createThingResponse,
    CreateThingResponse,

    -- * Response Lenses
    ctrrsThingARN,
    ctrrsThingId,
    ctrrsThingName,
    ctrrsResponseStatus,
  )
where

import Network.AWS.IoT.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | The input for the CreateThing operation.
--
--
--
-- /See:/ 'createThing' smart constructor.
data CreateThing = CreateThing'
  { _ctBillingGroupName ::
      !(Maybe Text),
    _ctThingTypeName :: !(Maybe Text),
    _ctAttributePayload ::
      !(Maybe AttributePayload),
    _ctThingName :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CreateThing' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ctBillingGroupName' - The name of the billing group the thing will be added to.
--
-- * 'ctThingTypeName' - The name of the thing type associated with the new thing.
--
-- * 'ctAttributePayload' - The attribute payload, which consists of up to three name/value pairs in a JSON document. For example: @{\"attributes\":{\"string1\":\"string2\"}}@
--
-- * 'ctThingName' - The name of the thing to create. You can't change a thing's name after you create it. To change a thing's name, you must create a new thing, give it the new name, and then delete the old thing.
createThing ::
  -- | 'ctThingName'
  Text ->
  CreateThing
createThing pThingName_ =
  CreateThing'
    { _ctBillingGroupName = Nothing,
      _ctThingTypeName = Nothing,
      _ctAttributePayload = Nothing,
      _ctThingName = pThingName_
    }

-- | The name of the billing group the thing will be added to.
ctBillingGroupName :: Lens' CreateThing (Maybe Text)
ctBillingGroupName = lens _ctBillingGroupName (\s a -> s {_ctBillingGroupName = a})

-- | The name of the thing type associated with the new thing.
ctThingTypeName :: Lens' CreateThing (Maybe Text)
ctThingTypeName = lens _ctThingTypeName (\s a -> s {_ctThingTypeName = a})

-- | The attribute payload, which consists of up to three name/value pairs in a JSON document. For example: @{\"attributes\":{\"string1\":\"string2\"}}@
ctAttributePayload :: Lens' CreateThing (Maybe AttributePayload)
ctAttributePayload = lens _ctAttributePayload (\s a -> s {_ctAttributePayload = a})

-- | The name of the thing to create. You can't change a thing's name after you create it. To change a thing's name, you must create a new thing, give it the new name, and then delete the old thing.
ctThingName :: Lens' CreateThing Text
ctThingName = lens _ctThingName (\s a -> s {_ctThingName = a})

instance AWSRequest CreateThing where
  type Rs CreateThing = CreateThingResponse
  request = postJSON ioT
  response =
    receiveJSON
      ( \s h x ->
          CreateThingResponse'
            <$> (x .?> "thingArn")
            <*> (x .?> "thingId")
            <*> (x .?> "thingName")
            <*> (pure (fromEnum s))
      )

instance Hashable CreateThing

instance NFData CreateThing

instance ToHeaders CreateThing where
  toHeaders = const mempty

instance ToJSON CreateThing where
  toJSON CreateThing' {..} =
    object
      ( catMaybes
          [ ("billingGroupName" .=) <$> _ctBillingGroupName,
            ("thingTypeName" .=) <$> _ctThingTypeName,
            ("attributePayload" .=) <$> _ctAttributePayload
          ]
      )

instance ToPath CreateThing where
  toPath CreateThing' {..} =
    mconcat ["/things/", toBS _ctThingName]

instance ToQuery CreateThing where
  toQuery = const mempty

-- | The output of the CreateThing operation.
--
--
--
-- /See:/ 'createThingResponse' smart constructor.
data CreateThingResponse = CreateThingResponse'
  { _ctrrsThingARN ::
      !(Maybe Text),
    _ctrrsThingId :: !(Maybe Text),
    _ctrrsThingName ::
      !(Maybe Text),
    _ctrrsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CreateThingResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ctrrsThingARN' - The ARN of the new thing.
--
-- * 'ctrrsThingId' - The thing ID.
--
-- * 'ctrrsThingName' - The name of the new thing.
--
-- * 'ctrrsResponseStatus' - -- | The response status code.
createThingResponse ::
  -- | 'ctrrsResponseStatus'
  Int ->
  CreateThingResponse
createThingResponse pResponseStatus_ =
  CreateThingResponse'
    { _ctrrsThingARN = Nothing,
      _ctrrsThingId = Nothing,
      _ctrrsThingName = Nothing,
      _ctrrsResponseStatus = pResponseStatus_
    }

-- | The ARN of the new thing.
ctrrsThingARN :: Lens' CreateThingResponse (Maybe Text)
ctrrsThingARN = lens _ctrrsThingARN (\s a -> s {_ctrrsThingARN = a})

-- | The thing ID.
ctrrsThingId :: Lens' CreateThingResponse (Maybe Text)
ctrrsThingId = lens _ctrrsThingId (\s a -> s {_ctrrsThingId = a})

-- | The name of the new thing.
ctrrsThingName :: Lens' CreateThingResponse (Maybe Text)
ctrrsThingName = lens _ctrrsThingName (\s a -> s {_ctrrsThingName = a})

-- | -- | The response status code.
ctrrsResponseStatus :: Lens' CreateThingResponse Int
ctrrsResponseStatus = lens _ctrrsResponseStatus (\s a -> s {_ctrrsResponseStatus = a})

instance NFData CreateThingResponse
