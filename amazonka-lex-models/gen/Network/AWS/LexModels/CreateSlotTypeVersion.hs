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
-- Module      : Network.AWS.LexModels.CreateSlotTypeVersion
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new version of a slot type based on the @> LATEST@ version of the specified slot type. If the @> LATEST@ version of this resource has not changed since the last version that you created, Amazon Lex doesn't create a new version. It returns the last version that you created.
--
--
-- When you create a version of a slot type, Amazon Lex sets the version to 1. Subsequent versions increment by 1. For more information, see 'versioning-intro' .
--
-- This operation requires permissions for the @lex:CreateSlotTypeVersion@ action.
module Network.AWS.LexModels.CreateSlotTypeVersion
  ( -- * Creating a Request
    createSlotTypeVersion,
    CreateSlotTypeVersion,

    -- * Request Lenses
    cstvChecksum,
    cstvName,

    -- * Destructuring the Response
    createSlotTypeVersionResponse,
    CreateSlotTypeVersionResponse,

    -- * Response Lenses
    cstvrrsSlotTypeConfigurations,
    cstvrrsCreatedDate,
    cstvrrsEnumerationValues,
    cstvrrsLastUpdatedDate,
    cstvrrsValueSelectionStrategy,
    cstvrrsVersion,
    cstvrrsName,
    cstvrrsParentSlotTypeSignature,
    cstvrrsDescription,
    cstvrrsChecksum,
    cstvrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.LexModels.Types
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'createSlotTypeVersion' smart constructor.
data CreateSlotTypeVersion = CreateSlotTypeVersion'
  { _cstvChecksum ::
      !(Maybe Text),
    _cstvName :: !Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'CreateSlotTypeVersion' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cstvChecksum' - Checksum for the @> LATEST@ version of the slot type that you want to publish. If you specify a checksum and the @> LATEST@ version of the slot type has a different checksum, Amazon Lex returns a @PreconditionFailedException@ exception and doesn't publish the new version. If you don't specify a checksum, Amazon Lex publishes the @> LATEST@ version.
--
-- * 'cstvName' - The name of the slot type that you want to create a new version for. The name is case sensitive.
createSlotTypeVersion ::
  -- | 'cstvName'
  Text ->
  CreateSlotTypeVersion
createSlotTypeVersion pName_ =
  CreateSlotTypeVersion'
    { _cstvChecksum = Nothing,
      _cstvName = pName_
    }

-- | Checksum for the @> LATEST@ version of the slot type that you want to publish. If you specify a checksum and the @> LATEST@ version of the slot type has a different checksum, Amazon Lex returns a @PreconditionFailedException@ exception and doesn't publish the new version. If you don't specify a checksum, Amazon Lex publishes the @> LATEST@ version.
cstvChecksum :: Lens' CreateSlotTypeVersion (Maybe Text)
cstvChecksum = lens _cstvChecksum (\s a -> s {_cstvChecksum = a})

-- | The name of the slot type that you want to create a new version for. The name is case sensitive.
cstvName :: Lens' CreateSlotTypeVersion Text
cstvName = lens _cstvName (\s a -> s {_cstvName = a})

instance AWSRequest CreateSlotTypeVersion where
  type
    Rs CreateSlotTypeVersion =
      CreateSlotTypeVersionResponse
  request = postJSON lexModels
  response =
    receiveJSON
      ( \s h x ->
          CreateSlotTypeVersionResponse'
            <$> (x .?> "slotTypeConfigurations" .!@ mempty)
            <*> (x .?> "createdDate")
            <*> (x .?> "enumerationValues" .!@ mempty)
            <*> (x .?> "lastUpdatedDate")
            <*> (x .?> "valueSelectionStrategy")
            <*> (x .?> "version")
            <*> (x .?> "name")
            <*> (x .?> "parentSlotTypeSignature")
            <*> (x .?> "description")
            <*> (x .?> "checksum")
            <*> (pure (fromEnum s))
      )

instance Hashable CreateSlotTypeVersion

instance NFData CreateSlotTypeVersion

instance ToHeaders CreateSlotTypeVersion where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON CreateSlotTypeVersion where
  toJSON CreateSlotTypeVersion' {..} =
    object
      (catMaybes [("checksum" .=) <$> _cstvChecksum])

instance ToPath CreateSlotTypeVersion where
  toPath CreateSlotTypeVersion' {..} =
    mconcat
      ["/slottypes/", toBS _cstvName, "/versions"]

instance ToQuery CreateSlotTypeVersion where
  toQuery = const mempty

-- | /See:/ 'createSlotTypeVersionResponse' smart constructor.
data CreateSlotTypeVersionResponse = CreateSlotTypeVersionResponse'
  { _cstvrrsSlotTypeConfigurations ::
      !( Maybe
           [SlotTypeConfiguration]
       ),
    _cstvrrsCreatedDate ::
      !( Maybe
           POSIX
       ),
    _cstvrrsEnumerationValues ::
      !( Maybe
           [EnumerationValue]
       ),
    _cstvrrsLastUpdatedDate ::
      !( Maybe
           POSIX
       ),
    _cstvrrsValueSelectionStrategy ::
      !( Maybe
           SlotValueSelectionStrategy
       ),
    _cstvrrsVersion ::
      !( Maybe
           Text
       ),
    _cstvrrsName ::
      !( Maybe
           Text
       ),
    _cstvrrsParentSlotTypeSignature ::
      !( Maybe
           Text
       ),
    _cstvrrsDescription ::
      !( Maybe
           Text
       ),
    _cstvrrsChecksum ::
      !( Maybe
           Text
       ),
    _cstvrrsResponseStatus ::
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

-- | Creates a value of 'CreateSlotTypeVersionResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cstvrrsSlotTypeConfigurations' - Configuration information that extends the parent built-in slot type.
--
-- * 'cstvrrsCreatedDate' - The date that the slot type was created.
--
-- * 'cstvrrsEnumerationValues' - A list of @EnumerationValue@ objects that defines the values that the slot type can take.
--
-- * 'cstvrrsLastUpdatedDate' - The date that the slot type was updated. When you create a resource, the creation date and last update date are the same.
--
-- * 'cstvrrsValueSelectionStrategy' - The strategy that Amazon Lex uses to determine the value of the slot. For more information, see 'PutSlotType' .
--
-- * 'cstvrrsVersion' - The version assigned to the new slot type version.
--
-- * 'cstvrrsName' - The name of the slot type.
--
-- * 'cstvrrsParentSlotTypeSignature' - The built-in slot type used a the parent of the slot type.
--
-- * 'cstvrrsDescription' - A description of the slot type.
--
-- * 'cstvrrsChecksum' - Checksum of the @> LATEST@ version of the slot type.
--
-- * 'cstvrrsResponseStatus' - -- | The response status code.
createSlotTypeVersionResponse ::
  -- | 'cstvrrsResponseStatus'
  Int ->
  CreateSlotTypeVersionResponse
createSlotTypeVersionResponse pResponseStatus_ =
  CreateSlotTypeVersionResponse'
    { _cstvrrsSlotTypeConfigurations =
        Nothing,
      _cstvrrsCreatedDate = Nothing,
      _cstvrrsEnumerationValues = Nothing,
      _cstvrrsLastUpdatedDate = Nothing,
      _cstvrrsValueSelectionStrategy = Nothing,
      _cstvrrsVersion = Nothing,
      _cstvrrsName = Nothing,
      _cstvrrsParentSlotTypeSignature = Nothing,
      _cstvrrsDescription = Nothing,
      _cstvrrsChecksum = Nothing,
      _cstvrrsResponseStatus = pResponseStatus_
    }

-- | Configuration information that extends the parent built-in slot type.
cstvrrsSlotTypeConfigurations :: Lens' CreateSlotTypeVersionResponse [SlotTypeConfiguration]
cstvrrsSlotTypeConfigurations = lens _cstvrrsSlotTypeConfigurations (\s a -> s {_cstvrrsSlotTypeConfigurations = a}) . _Default . _Coerce

-- | The date that the slot type was created.
cstvrrsCreatedDate :: Lens' CreateSlotTypeVersionResponse (Maybe UTCTime)
cstvrrsCreatedDate = lens _cstvrrsCreatedDate (\s a -> s {_cstvrrsCreatedDate = a}) . mapping _Time

-- | A list of @EnumerationValue@ objects that defines the values that the slot type can take.
cstvrrsEnumerationValues :: Lens' CreateSlotTypeVersionResponse [EnumerationValue]
cstvrrsEnumerationValues = lens _cstvrrsEnumerationValues (\s a -> s {_cstvrrsEnumerationValues = a}) . _Default . _Coerce

-- | The date that the slot type was updated. When you create a resource, the creation date and last update date are the same.
cstvrrsLastUpdatedDate :: Lens' CreateSlotTypeVersionResponse (Maybe UTCTime)
cstvrrsLastUpdatedDate = lens _cstvrrsLastUpdatedDate (\s a -> s {_cstvrrsLastUpdatedDate = a}) . mapping _Time

-- | The strategy that Amazon Lex uses to determine the value of the slot. For more information, see 'PutSlotType' .
cstvrrsValueSelectionStrategy :: Lens' CreateSlotTypeVersionResponse (Maybe SlotValueSelectionStrategy)
cstvrrsValueSelectionStrategy = lens _cstvrrsValueSelectionStrategy (\s a -> s {_cstvrrsValueSelectionStrategy = a})

-- | The version assigned to the new slot type version.
cstvrrsVersion :: Lens' CreateSlotTypeVersionResponse (Maybe Text)
cstvrrsVersion = lens _cstvrrsVersion (\s a -> s {_cstvrrsVersion = a})

-- | The name of the slot type.
cstvrrsName :: Lens' CreateSlotTypeVersionResponse (Maybe Text)
cstvrrsName = lens _cstvrrsName (\s a -> s {_cstvrrsName = a})

-- | The built-in slot type used a the parent of the slot type.
cstvrrsParentSlotTypeSignature :: Lens' CreateSlotTypeVersionResponse (Maybe Text)
cstvrrsParentSlotTypeSignature = lens _cstvrrsParentSlotTypeSignature (\s a -> s {_cstvrrsParentSlotTypeSignature = a})

-- | A description of the slot type.
cstvrrsDescription :: Lens' CreateSlotTypeVersionResponse (Maybe Text)
cstvrrsDescription = lens _cstvrrsDescription (\s a -> s {_cstvrrsDescription = a})

-- | Checksum of the @> LATEST@ version of the slot type.
cstvrrsChecksum :: Lens' CreateSlotTypeVersionResponse (Maybe Text)
cstvrrsChecksum = lens _cstvrrsChecksum (\s a -> s {_cstvrrsChecksum = a})

-- | -- | The response status code.
cstvrrsResponseStatus :: Lens' CreateSlotTypeVersionResponse Int
cstvrrsResponseStatus = lens _cstvrrsResponseStatus (\s a -> s {_cstvrrsResponseStatus = a})

instance NFData CreateSlotTypeVersionResponse
