{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}
{-# OPTIONS_GHC -fno-warn-deprecations   #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.WorkDocs.InitiateDocumentVersionUpload
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new document object and version object.
--
-- The client specifies the parent folder ID and name of the document to upload. The ID is optionally specified when creating a new version of an existing document. This is the first step to upload a document. Next, upload the document to the URL returned from the call, and then call 'UpdateDocumentVersion' .
-- To cancel the document upload, call 'AbortDocumentVersionUpload' .
module Network.AWS.WorkDocs.InitiateDocumentVersionUpload
    (
    -- * Creating a request
      InitiateDocumentVersionUpload (..)
    , mkInitiateDocumentVersionUpload
    -- ** Request lenses
    , idvuParentFolderId
    , idvuAuthenticationToken
    , idvuContentCreatedTimestamp
    , idvuContentModifiedTimestamp
    , idvuContentType
    , idvuDocumentSizeInBytes
    , idvuId
    , idvuName

    -- * Destructuring the response
    , InitiateDocumentVersionUploadResponse (..)
    , mkInitiateDocumentVersionUploadResponse
    -- ** Response lenses
    , idvurrsMetadata
    , idvurrsUploadMetadata
    , idvurrsResponseStatus
    ) where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response
import qualified Network.AWS.WorkDocs.Types as Types

-- | /See:/ 'mkInitiateDocumentVersionUpload' smart constructor.
data InitiateDocumentVersionUpload = InitiateDocumentVersionUpload'
  { parentFolderId :: Types.ParentFolderId
    -- ^ The ID of the parent folder.
  , authenticationToken :: Core.Maybe Types.AuthenticationHeaderType
    -- ^ Amazon WorkDocs authentication token. Not required when using AWS administrator credentials to access the API.
  , contentCreatedTimestamp :: Core.Maybe Core.NominalDiffTime
    -- ^ The timestamp when the content of the document was originally created.
  , contentModifiedTimestamp :: Core.Maybe Core.NominalDiffTime
    -- ^ The timestamp when the content of the document was modified.
  , contentType :: Core.Maybe Types.DocumentContentType
    -- ^ The content type of the document.
  , documentSizeInBytes :: Core.Maybe Core.Integer
    -- ^ The size of the document, in bytes.
  , id :: Core.Maybe Types.Id
    -- ^ The ID of the document.
  , name :: Core.Maybe Types.Name
    -- ^ The name of the document.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass Core.NFData

-- | Creates a 'InitiateDocumentVersionUpload' value with any optional fields omitted.
mkInitiateDocumentVersionUpload
    :: Types.ParentFolderId -- ^ 'parentFolderId'
    -> InitiateDocumentVersionUpload
mkInitiateDocumentVersionUpload parentFolderId
  = InitiateDocumentVersionUpload'{parentFolderId,
                                   authenticationToken = Core.Nothing,
                                   contentCreatedTimestamp = Core.Nothing,
                                   contentModifiedTimestamp = Core.Nothing,
                                   contentType = Core.Nothing, documentSizeInBytes = Core.Nothing,
                                   id = Core.Nothing, name = Core.Nothing}

-- | The ID of the parent folder.
--
-- /Note:/ Consider using 'parentFolderId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
idvuParentFolderId :: Lens.Lens' InitiateDocumentVersionUpload Types.ParentFolderId
idvuParentFolderId = Lens.field @"parentFolderId"
{-# INLINEABLE idvuParentFolderId #-}
{-# DEPRECATED parentFolderId "Use generic-lens or generic-optics with 'parentFolderId' instead"  #-}

-- | Amazon WorkDocs authentication token. Not required when using AWS administrator credentials to access the API.
--
-- /Note:/ Consider using 'authenticationToken' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
idvuAuthenticationToken :: Lens.Lens' InitiateDocumentVersionUpload (Core.Maybe Types.AuthenticationHeaderType)
idvuAuthenticationToken = Lens.field @"authenticationToken"
{-# INLINEABLE idvuAuthenticationToken #-}
{-# DEPRECATED authenticationToken "Use generic-lens or generic-optics with 'authenticationToken' instead"  #-}

-- | The timestamp when the content of the document was originally created.
--
-- /Note:/ Consider using 'contentCreatedTimestamp' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
idvuContentCreatedTimestamp :: Lens.Lens' InitiateDocumentVersionUpload (Core.Maybe Core.NominalDiffTime)
idvuContentCreatedTimestamp = Lens.field @"contentCreatedTimestamp"
{-# INLINEABLE idvuContentCreatedTimestamp #-}
{-# DEPRECATED contentCreatedTimestamp "Use generic-lens or generic-optics with 'contentCreatedTimestamp' instead"  #-}

-- | The timestamp when the content of the document was modified.
--
-- /Note:/ Consider using 'contentModifiedTimestamp' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
idvuContentModifiedTimestamp :: Lens.Lens' InitiateDocumentVersionUpload (Core.Maybe Core.NominalDiffTime)
idvuContentModifiedTimestamp = Lens.field @"contentModifiedTimestamp"
{-# INLINEABLE idvuContentModifiedTimestamp #-}
{-# DEPRECATED contentModifiedTimestamp "Use generic-lens or generic-optics with 'contentModifiedTimestamp' instead"  #-}

-- | The content type of the document.
--
-- /Note:/ Consider using 'contentType' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
idvuContentType :: Lens.Lens' InitiateDocumentVersionUpload (Core.Maybe Types.DocumentContentType)
idvuContentType = Lens.field @"contentType"
{-# INLINEABLE idvuContentType #-}
{-# DEPRECATED contentType "Use generic-lens or generic-optics with 'contentType' instead"  #-}

-- | The size of the document, in bytes.
--
-- /Note:/ Consider using 'documentSizeInBytes' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
idvuDocumentSizeInBytes :: Lens.Lens' InitiateDocumentVersionUpload (Core.Maybe Core.Integer)
idvuDocumentSizeInBytes = Lens.field @"documentSizeInBytes"
{-# INLINEABLE idvuDocumentSizeInBytes #-}
{-# DEPRECATED documentSizeInBytes "Use generic-lens or generic-optics with 'documentSizeInBytes' instead"  #-}

-- | The ID of the document.
--
-- /Note:/ Consider using 'id' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
idvuId :: Lens.Lens' InitiateDocumentVersionUpload (Core.Maybe Types.Id)
idvuId = Lens.field @"id"
{-# INLINEABLE idvuId #-}
{-# DEPRECATED id "Use generic-lens or generic-optics with 'id' instead"  #-}

-- | The name of the document.
--
-- /Note:/ Consider using 'name' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
idvuName :: Lens.Lens' InitiateDocumentVersionUpload (Core.Maybe Types.Name)
idvuName = Lens.field @"name"
{-# INLINEABLE idvuName #-}
{-# DEPRECATED name "Use generic-lens or generic-optics with 'name' instead"  #-}

instance Core.ToQuery InitiateDocumentVersionUpload where
        toQuery _ = Core.pure Core.mempty

instance Core.ToHeaders InitiateDocumentVersionUpload where
        toHeaders InitiateDocumentVersionUpload{..}
          = Core.toHeaders "Authentication" authenticationToken Core.<>
              Core.pure ("Content-Type", "application/x-amz-json-1.1")

instance Core.FromJSON InitiateDocumentVersionUpload where
        toJSON InitiateDocumentVersionUpload{..}
          = Core.object
              (Core.catMaybes
                 [Core.Just ("ParentFolderId" Core..= parentFolderId),
                  ("ContentCreatedTimestamp" Core..=) Core.<$>
                    contentCreatedTimestamp,
                  ("ContentModifiedTimestamp" Core..=) Core.<$>
                    contentModifiedTimestamp,
                  ("ContentType" Core..=) Core.<$> contentType,
                  ("DocumentSizeInBytes" Core..=) Core.<$> documentSizeInBytes,
                  ("Id" Core..=) Core.<$> id, ("Name" Core..=) Core.<$> name])

instance Core.AWSRequest InitiateDocumentVersionUpload where
        type Rs InitiateDocumentVersionUpload =
             InitiateDocumentVersionUploadResponse
        toRequest x@Core.Request{..}
          = Core.Request{Core._rqService = Types.mkServiceConfig,
                         Core._rqMethod = Request.POST, Core._rqPath = "/api/v1/documents",
                         Core._rqQuery = Core.toQuery x, Core._rqHeaders = Core.toHeaders x,
                         Core._rqBody = Core.toJSONBody x}
        
        {-# INLINE toRequest #-}
        parseResponse
          = Response.receiveJSON
              (\ s h x ->
                 InitiateDocumentVersionUploadResponse' Core.<$>
                   (x Core..:? "Metadata") Core.<*> x Core..:? "UploadMetadata"
                     Core.<*> Core.pure (Core.fromEnum s))
        
        {-# INLINE parseResponse #-}

-- | /See:/ 'mkInitiateDocumentVersionUploadResponse' smart constructor.
data InitiateDocumentVersionUploadResponse = InitiateDocumentVersionUploadResponse'
  { metadata :: Core.Maybe Types.DocumentMetadata
    -- ^ The document metadata.
  , uploadMetadata :: Core.Maybe Types.UploadMetadata
    -- ^ The upload metadata.
  , responseStatus :: Core.Int
    -- ^ The response status code.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass Core.NFData

-- | Creates a 'InitiateDocumentVersionUploadResponse' value with any optional fields omitted.
mkInitiateDocumentVersionUploadResponse
    :: Core.Int -- ^ 'responseStatus'
    -> InitiateDocumentVersionUploadResponse
mkInitiateDocumentVersionUploadResponse responseStatus
  = InitiateDocumentVersionUploadResponse'{metadata = Core.Nothing,
                                           uploadMetadata = Core.Nothing, responseStatus}

-- | The document metadata.
--
-- /Note:/ Consider using 'metadata' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
idvurrsMetadata :: Lens.Lens' InitiateDocumentVersionUploadResponse (Core.Maybe Types.DocumentMetadata)
idvurrsMetadata = Lens.field @"metadata"
{-# INLINEABLE idvurrsMetadata #-}
{-# DEPRECATED metadata "Use generic-lens or generic-optics with 'metadata' instead"  #-}

-- | The upload metadata.
--
-- /Note:/ Consider using 'uploadMetadata' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
idvurrsUploadMetadata :: Lens.Lens' InitiateDocumentVersionUploadResponse (Core.Maybe Types.UploadMetadata)
idvurrsUploadMetadata = Lens.field @"uploadMetadata"
{-# INLINEABLE idvurrsUploadMetadata #-}
{-# DEPRECATED uploadMetadata "Use generic-lens or generic-optics with 'uploadMetadata' instead"  #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
idvurrsResponseStatus :: Lens.Lens' InitiateDocumentVersionUploadResponse Core.Int
idvurrsResponseStatus = Lens.field @"responseStatus"
{-# INLINEABLE idvurrsResponseStatus #-}
{-# DEPRECATED responseStatus "Use generic-lens or generic-optics with 'responseStatus' instead"  #-}
