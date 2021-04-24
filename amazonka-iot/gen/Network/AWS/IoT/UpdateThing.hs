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
-- Module      : Network.AWS.IoT.UpdateThing
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the data for a thing.
module Network.AWS.IoT.UpdateThing
  ( -- * Creating a Request
    updateThing,
    UpdateThing,

    -- * Request Lenses
    utExpectedVersion,
    utThingTypeName,
    utRemoveThingType,
    utAttributePayload,
    utThingName,

    -- * Destructuring the Response
    updateThingResponse,
    UpdateThingResponse,

    -- * Response Lenses
    utrrsResponseStatus,
  )
where

import Network.AWS.IoT.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | The input for the UpdateThing operation.
--
--
--
-- /See:/ 'updateThing' smart constructor.
data UpdateThing = UpdateThing'
  { _utExpectedVersion ::
      !(Maybe Integer),
    _utThingTypeName :: !(Maybe Text),
    _utRemoveThingType :: !(Maybe Bool),
    _utAttributePayload ::
      !(Maybe AttributePayload),
    _utThingName :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'UpdateThing' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'utExpectedVersion' - The expected version of the thing record in the registry. If the version of the record in the registry does not match the expected version specified in the request, the @UpdateThing@ request is rejected with a @VersionConflictException@ .
--
-- * 'utThingTypeName' - The name of the thing type.
--
-- * 'utRemoveThingType' - Remove a thing type association. If __true__ , the association is removed.
--
-- * 'utAttributePayload' - A list of thing attributes, a JSON string containing name-value pairs. For example: @{\"attributes\":{\"name1\":\"value2\"}}@  This data is used to add new attributes or update existing attributes.
--
-- * 'utThingName' - The name of the thing to update. You can't change a thing's name. To change a thing's name, you must create a new thing, give it the new name, and then delete the old thing.
updateThing ::
  -- | 'utThingName'
  Text ->
  UpdateThing
updateThing pThingName_ =
  UpdateThing'
    { _utExpectedVersion = Nothing,
      _utThingTypeName = Nothing,
      _utRemoveThingType = Nothing,
      _utAttributePayload = Nothing,
      _utThingName = pThingName_
    }

-- | The expected version of the thing record in the registry. If the version of the record in the registry does not match the expected version specified in the request, the @UpdateThing@ request is rejected with a @VersionConflictException@ .
utExpectedVersion :: Lens' UpdateThing (Maybe Integer)
utExpectedVersion = lens _utExpectedVersion (\s a -> s {_utExpectedVersion = a})

-- | The name of the thing type.
utThingTypeName :: Lens' UpdateThing (Maybe Text)
utThingTypeName = lens _utThingTypeName (\s a -> s {_utThingTypeName = a})

-- | Remove a thing type association. If __true__ , the association is removed.
utRemoveThingType :: Lens' UpdateThing (Maybe Bool)
utRemoveThingType = lens _utRemoveThingType (\s a -> s {_utRemoveThingType = a})

-- | A list of thing attributes, a JSON string containing name-value pairs. For example: @{\"attributes\":{\"name1\":\"value2\"}}@  This data is used to add new attributes or update existing attributes.
utAttributePayload :: Lens' UpdateThing (Maybe AttributePayload)
utAttributePayload = lens _utAttributePayload (\s a -> s {_utAttributePayload = a})

-- | The name of the thing to update. You can't change a thing's name. To change a thing's name, you must create a new thing, give it the new name, and then delete the old thing.
utThingName :: Lens' UpdateThing Text
utThingName = lens _utThingName (\s a -> s {_utThingName = a})

instance AWSRequest UpdateThing where
  type Rs UpdateThing = UpdateThingResponse
  request = patchJSON ioT
  response =
    receiveEmpty
      ( \s h x ->
          UpdateThingResponse' <$> (pure (fromEnum s))
      )

instance Hashable UpdateThing

instance NFData UpdateThing

instance ToHeaders UpdateThing where
  toHeaders = const mempty

instance ToJSON UpdateThing where
  toJSON UpdateThing' {..} =
    object
      ( catMaybes
          [ ("expectedVersion" .=) <$> _utExpectedVersion,
            ("thingTypeName" .=) <$> _utThingTypeName,
            ("removeThingType" .=) <$> _utRemoveThingType,
            ("attributePayload" .=) <$> _utAttributePayload
          ]
      )

instance ToPath UpdateThing where
  toPath UpdateThing' {..} =
    mconcat ["/things/", toBS _utThingName]

instance ToQuery UpdateThing where
  toQuery = const mempty

-- | The output from the UpdateThing operation.
--
--
--
-- /See:/ 'updateThingResponse' smart constructor.
newtype UpdateThingResponse = UpdateThingResponse'
  { _utrrsResponseStatus ::
      Int
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'UpdateThingResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'utrrsResponseStatus' - -- | The response status code.
updateThingResponse ::
  -- | 'utrrsResponseStatus'
  Int ->
  UpdateThingResponse
updateThingResponse pResponseStatus_ =
  UpdateThingResponse'
    { _utrrsResponseStatus =
        pResponseStatus_
    }

-- | -- | The response status code.
utrrsResponseStatus :: Lens' UpdateThingResponse Int
utrrsResponseStatus = lens _utrrsResponseStatus (\s a -> s {_utrrsResponseStatus = a})

instance NFData UpdateThingResponse
