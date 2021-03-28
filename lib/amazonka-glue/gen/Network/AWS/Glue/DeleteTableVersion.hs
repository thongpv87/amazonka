{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}
{-# OPTIONS_GHC -fno-warn-deprecations   #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Glue.DeleteTableVersion
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a specified version of a table.
module Network.AWS.Glue.DeleteTableVersion
    (
    -- * Creating a request
      DeleteTableVersion (..)
    , mkDeleteTableVersion
    -- ** Request lenses
    , dtvDatabaseName
    , dtvTableName
    , dtvVersionId
    , dtvCatalogId

    -- * Destructuring the response
    , DeleteTableVersionResponse (..)
    , mkDeleteTableVersionResponse
    -- ** Response lenses
    , dtvrrsResponseStatus
    ) where

import qualified Network.AWS.Glue.Types as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'mkDeleteTableVersion' smart constructor.
data DeleteTableVersion = DeleteTableVersion'
  { databaseName :: Types.DatabaseName
    -- ^ The database in the catalog in which the table resides. For Hive compatibility, this name is entirely lowercase.
  , tableName :: Types.TableName
    -- ^ The name of the table. For Hive compatibility, this name is entirely lowercase.
  , versionId :: Types.VersionString
    -- ^ The ID of the table version to be deleted. A @VersionID@ is a string representation of an integer. Each version is incremented by 1.
  , catalogId :: Core.Maybe Types.CatalogId
    -- ^ The ID of the Data Catalog where the tables reside. If none is provided, the AWS account ID is used by default.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'DeleteTableVersion' value with any optional fields omitted.
mkDeleteTableVersion
    :: Types.DatabaseName -- ^ 'databaseName'
    -> Types.TableName -- ^ 'tableName'
    -> Types.VersionString -- ^ 'versionId'
    -> DeleteTableVersion
mkDeleteTableVersion databaseName tableName versionId
  = DeleteTableVersion'{databaseName, tableName, versionId,
                        catalogId = Core.Nothing}

-- | The database in the catalog in which the table resides. For Hive compatibility, this name is entirely lowercase.
--
-- /Note:/ Consider using 'databaseName' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dtvDatabaseName :: Lens.Lens' DeleteTableVersion Types.DatabaseName
dtvDatabaseName = Lens.field @"databaseName"
{-# INLINEABLE dtvDatabaseName #-}
{-# DEPRECATED databaseName "Use generic-lens or generic-optics with 'databaseName' instead"  #-}

-- | The name of the table. For Hive compatibility, this name is entirely lowercase.
--
-- /Note:/ Consider using 'tableName' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dtvTableName :: Lens.Lens' DeleteTableVersion Types.TableName
dtvTableName = Lens.field @"tableName"
{-# INLINEABLE dtvTableName #-}
{-# DEPRECATED tableName "Use generic-lens or generic-optics with 'tableName' instead"  #-}

-- | The ID of the table version to be deleted. A @VersionID@ is a string representation of an integer. Each version is incremented by 1.
--
-- /Note:/ Consider using 'versionId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dtvVersionId :: Lens.Lens' DeleteTableVersion Types.VersionString
dtvVersionId = Lens.field @"versionId"
{-# INLINEABLE dtvVersionId #-}
{-# DEPRECATED versionId "Use generic-lens or generic-optics with 'versionId' instead"  #-}

-- | The ID of the Data Catalog where the tables reside. If none is provided, the AWS account ID is used by default.
--
-- /Note:/ Consider using 'catalogId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dtvCatalogId :: Lens.Lens' DeleteTableVersion (Core.Maybe Types.CatalogId)
dtvCatalogId = Lens.field @"catalogId"
{-# INLINEABLE dtvCatalogId #-}
{-# DEPRECATED catalogId "Use generic-lens or generic-optics with 'catalogId' instead"  #-}

instance Core.ToQuery DeleteTableVersion where
        toQuery _ = Core.pure Core.mempty

instance Core.ToHeaders DeleteTableVersion where
        toHeaders DeleteTableVersion{..}
          = Core.pure ("X-Amz-Target", "AWSGlue.DeleteTableVersion") Core.<>
              Core.pure ("Content-Type", "application/x-amz-json-1.1")

instance Core.FromJSON DeleteTableVersion where
        toJSON DeleteTableVersion{..}
          = Core.object
              (Core.catMaybes
                 [Core.Just ("DatabaseName" Core..= databaseName),
                  Core.Just ("TableName" Core..= tableName),
                  Core.Just ("VersionId" Core..= versionId),
                  ("CatalogId" Core..=) Core.<$> catalogId])

instance Core.AWSRequest DeleteTableVersion where
        type Rs DeleteTableVersion = DeleteTableVersionResponse
        toRequest x@Core.Request{..}
          = Core.Request{Core._rqService = Types.mkServiceConfig,
                         Core._rqMethod = Request.POST, Core._rqPath = "/",
                         Core._rqQuery = Core.toQuery x, Core._rqHeaders = Core.toHeaders x,
                         Core._rqBody = Core.toJSONBody x}
        
        {-# INLINE toRequest #-}
        parseResponse
          = Response.receiveEmpty
              (\ s h x ->
                 DeleteTableVersionResponse' Core.<$> (Core.pure (Core.fromEnum s)))
        
        {-# INLINE parseResponse #-}

-- | /See:/ 'mkDeleteTableVersionResponse' smart constructor.
newtype DeleteTableVersionResponse = DeleteTableVersionResponse'
  { responseStatus :: Core.Int
    -- ^ The response status code.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving newtype (Core.Hashable, Core.NFData)

-- | Creates a 'DeleteTableVersionResponse' value with any optional fields omitted.
mkDeleteTableVersionResponse
    :: Core.Int -- ^ 'responseStatus'
    -> DeleteTableVersionResponse
mkDeleteTableVersionResponse responseStatus
  = DeleteTableVersionResponse'{responseStatus}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dtvrrsResponseStatus :: Lens.Lens' DeleteTableVersionResponse Core.Int
dtvrrsResponseStatus = Lens.field @"responseStatus"
{-# INLINEABLE dtvrrsResponseStatus #-}
{-# DEPRECATED responseStatus "Use generic-lens or generic-optics with 'responseStatus' instead"  #-}
